{ pkgs, ... }: 
{
  programs.kitty = {
    enable = true;

 
    font = {
      name = "JetBrainsMono Nerd Font";
      size = 13;
    };

    settings = {
      selection_foreground = "#3d59a1";
      selection_background = "#16161e";
      confirm_os_window_close = 0;
      background_opacity = "0.6";  
      window_padding_width = 10;
      scrollback_lines = 10000;
      enable_audio_bell = false;
      mouse_hide_wait = 60;
      bell_border_color = "#fffac2";
      active_border_color = "#3d59a1";
      inactive_border_color = "#101014";
      
      ## Tabs
      tab_title_template = "{index}";
      active_tab_font_style = "normal";
      inactive_tab_font_style = "bold";
      tab_bar_style = "fade";
      tab_fade = 1;
      tab_powerline_style = "round";
      active_tab_foreground = "#3d59a1";
      active_tab_background = "#16161e";
      inactive_tab_foreground = "#787c99";
      inactive_tab_background = "#16161e";
      tab_bar_background = "#101014";

	#bar
      macos_titlebar_color = "#16161e";
    };

    keybindings = {  
      ## Tabs
      "alt+1" = "goto_tab 1";
      "alt+2" = "goto_tab 2";
      "alt+3" = "goto_tab 3";
      "alt+4" = "goto_tab 4";

      ## Unbind
      "ctrl+shift+left" = "no_op";
      "ctrl+shift+right" = "no_op";
    };
  };
}
