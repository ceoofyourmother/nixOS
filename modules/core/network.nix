{ pkgs,lib, ... }: 
{
  networking = {
    hostName = "nixos";
   # networkmanager.enable = true;
    nameservers = [ "1.1.1.1" "8.8.8.8" ];
    firewall = {
enable = true;

allowedTCPPortRanges = [
{ from = 30000; to = 60000; }
];
allowedUDPPortRanges = [
{ from = 30000; to = 60000; }
];
};

  };

  environment.systemPackages = with pkgs; [
    networkmanagerapplet
  ];
}
