{ pkgs, ... }:
{
  boot.kernelModules = [ "kvm-intel" ];
    boot.blacklistedKernelModules = [
    "amdgpu"
  ];
boot.initrd.availableKernelModules = [ "amdgpu" "vfio-pci" ];
boot.kernelParams = [ "intel_iommu=on" ];
boot.kernelPackages = pkgs.linuxPackages_latest;
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.systemd-boot.configurationLimit = 10;
}
