{ pkgs, lib, inputs, ...}: 
let
  spicePkgs = inputs.spicetify-nix.legacyPackages.${pkgs.system};
in 
{
  nixpkgs.config.allowUnfreePredicate = pkg:
    builtins.elem (lib.getName pkg) [
      "spotify"
    ];

  imports = [inputs.spicetify-nix.homeManagerModules.default];

  programs.spicetify = {
    enable = false;
     enabledExtensions = with spicePkgs.extensions; [
       hidePodcasts
       shuffle # shuffle+ (special characters are sanitized out of extension names)
     ];
     #theme = spicePkgs.themes.catppuccin;
     #colorScheme = "mocha";
  };
}
