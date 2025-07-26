{ inputs, nixpkgs, self, username, host, ...}:
{
  imports =
       [ (import ./bootloader.nix) ]
    ++ [ (import ./hardware.nix) ]
    ++ [ (import ./xserver.nix) ]
   # ++ [ (import ./nvidia.nix)]
   ++ [(import ./gpu-passthrought.nix)]
    # ++ [ (import ./vfio.nix)]
    ++ [(import ./rdp.nix)] 
     ++ [ (import ./i18n.nix)]
    ++ [ (import ./network.nix) ]
    ++ [ (import ./pipewire.nix) ]
    ++ [ (import ./program.nix) ]
    ++ [ (import ./security.nix) ]
    ++ [ (import ./services.nix) ]
    ++ [ (import ./system.nix) ]
    ++ [ (import ./user.nix) ]
    ++ [ (import ./wayland.nix) ]
    ++ [ (import ./virtualization.nix) ];
}
