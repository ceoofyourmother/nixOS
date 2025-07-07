{ ... }: 
{
  services = {
    gvfs.enable = true;
    gnome.gnome-keyring.enable = true;
    dbus.enable = true;
    fstrim.enable = true;
    openssh = {
        enable = true;
        ports = [22];
      };
  };
          services.xserver.videoDrivers = ["nvidia"];
          
        hardware.nvidia ={
                modesetting.enable = true;
                powerManagement.enable = false;
                powerManagement.finegrained = false;

                open = true;

                nvidiaSettings = false;

#               package = pkgs.linuxPackages_6_10.nvidiaPackages.beta;
#               package = config.boot.kernelPackages.nvidiaPackages.latest;

        };
  services.logind.extraConfig = ''
    # don’t shutdown when power button is short-pressed
    HandlePowerKey=ignore
  '';
}
