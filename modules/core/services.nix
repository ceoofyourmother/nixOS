{ pkgs, ... }: 
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
    environment.systemPackages = with pkgs; [
     pkgs.gnome.gnome-remote-desktop
  ];
  services.gnome.gnome-remote-desktop.enable = true;
   services.xserver.videoDrivers = [ "nvidia" ];
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
  
    services.avahi = {
    enable = true;
    nssmdns = true;  # printing
    publish = {
      enable = true;
      addresses = true;
      workstation = true;
      userServices = true;
    };
  };

  services.ollama = {
  enable = true;
  # Optional: preload models, see https://ollama.com/library
};

}
