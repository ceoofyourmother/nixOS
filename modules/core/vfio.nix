let
  # RTX 3070 Ti
  gpuIDs = [
    "1002:67ef" # Graphics
    "1002:aae0" # Audio
  ];
in { pkgs, lib, config, ... }: {
  options.vfio.enable = with lib;
    mkEnableOption "Configure the machine for VFIO";

  config = let cfg = config.vfio;
  in {
    boot = {
      initrd.kernelModules = [
        "vfio_pci"
        "vfio"
        "vfio_iommu_type1"
        #"vfio_virqfd"

        "amd"
        ];

      kernelParams = [
        # enable IOMMU
        "intel_iommu=on"
        "iommu=pt"
        "kvm.ignore_msrs=1"

      ] ++ lib.optional cfg.enable
        # isolate the GPU
        ("vfio-pci.ids=" + lib.concatStringsSep "," gpuIDs);
    };

    hardware.opengl.enable = true;
    virtualisation.spiceUSBRedirection.enable = true;
  };
}
