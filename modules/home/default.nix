{inputs, username, host, ...}: {
  imports =
       [(import ./aseprite/aseprite.nix)]         # pixel art editor
    ++ [(import ./audacious/audacious.nix)]       # music player
    ++ [(import ./bat.nix)]                       # better cat command
    ++ [(import ./browser.nix)]
    ++ [(import ./btop.nix)]                      # resouces monitor 
    ++ [(import ./cava.nix)]    # audio visualizer
    ++ [(import ./discord.nix)]
    ++ [(import ./floorp/floorp.nix)]             # firefox based browser
    ++ [(import ./fuzzel.nix)]                    # search bar
    ++ [(import ./git.nix)]                       # version control
    ++ [(import ./gtk.nix)]                       # gtk theme
    ++ [(import ./hyprland)]                      # window manager
    ++ [(import ./kitty.nix)] 
    ++ [(import ./wallpaperengine.nix)]
    #++ [(import ./ollama.nix)] # terminal
   # ++ [(import ./alacritty.nix)]
    ++ [(import ./swaync/swaync.nix)]             # notification deamon
    ++ [(import ./micro.nix)]                     # nano replacement
    ++ [(import ./nvim)]                      # neovim editor
    ++ [(import ./packages.nix)]                  # other packages
    ++ [(import ./retroarch.nix)]
    ++ [(import ./scripts/scripts.nix)]           # personal scripts
    ++ [(import ./spicetify.nix)]                 # spotify client
    ++ [(import ./starship.nix)]                  # shell prompt
    ++ [(import ./swaylock.nix)]                  # lock screen
    ++ [(import ./vscodium.nix)]                  # vscode forck
    ++ [(import ./waybar)]                        # status bar
    ++ [(import ./zsh.nix)];                      # shell
}
