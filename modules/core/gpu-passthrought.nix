{
  config,
  lib,
  inputs,
  pkgs,
  ...
}:
let
    devices = [
        "10de:2206" # Nvidia 2060 mobile GPU
        "10de:1aef"# Nvidia audio controller
    ];
in {
    # Make the devices bind to VFIO
    boot.kernelParams = [
        "vfio-pci.ids=${lib.concatStringsSep "," devices}"
    ];
    boot.initrd.kernelModules = [
        "vfio_pci"
        "vfio"
        "vfio_iommu_type1"
    ];

    # Blacklist the nvidia drivers to make sure they don't get loaded
    boot.extraModprobeConfig = ''
        softdep nvidia pre: vfio-pci
        softdep drm pre: vfio-pci
        softdep nouveau pre: vfio-pci
    '';
    boot.blacklistedKernelModules = [
        "nouveau"
        "nvidia"
        "nvidia_drm"
        "nvidia_modeset"
        "i2c_nvidia_gpu"
    ];
    virtualisation.spiceUSBRedirection.enable = true;
}

