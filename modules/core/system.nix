{ self, config, pkgs, lib, inputs, ...}: 
{
  # imports = [ inputs.nix-gaming.nixosModules.default ];
  nix = {
    settings = {
      auto-optimise-store = true;
      experimental-features = [ "nix-command" "flakes" ];
      substituters = [ "https://nix-gaming.cachix.org" ];
      trusted-public-keys = [ "nix-gaming.cachix.org-1:nbjlureqMbRAxR1gJ/f3hxemL9svXaZF/Ees8vCUUs4=" ];
    };
    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 7d";
    };
  };
  nixpkgs = {
    overlays = [
      inputs.nur.overlay
    ];
  };

  systemd.user.services.vesktop = {
      script = '' 
      exec dbus-run-session -- /usr/bin/env
      '';
    };

  environment.systemPackages = with pkgs; [
    wget
    git
    looking-glass-client
  ];


systemd.tmpfiles.rules = [
    "f /dev/shm/scream 0660 root qemu-libvirtd -"
    "f /dev/shm/looking-glass 0660 root qemu-libvirtd -"
  ];

    systemd.services.gnome-remote-desktop = {
      wantedBy = [ "graphical.target" ];
    };

  time.timeZone = "America/Sao_Paulo";
  i18n.defaultLocale = "en_US.UTF-8";
  nixpkgs.config.allowUnfree = true;
  system.stateVersion = "24.05";
}
