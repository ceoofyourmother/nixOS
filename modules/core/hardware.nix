{ pkgs, ... }:
{  
  hardware = {
  bluetooth.enable = true;

  bluetooth.powerOnBoot = true;
    graphics = {
      enable = true;
      extraPackages = with pkgs; [
    
      ];
    };
  };
  hardware.enableRedistributableFirmware = true;
}
