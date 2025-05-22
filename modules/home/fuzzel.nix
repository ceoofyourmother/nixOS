{
  programs.fuzzel = {
    enable = true;
    settings = {
      main = {
        font = "JetBrains Mono Nerd Font 10.6";
        width = 40;
        lines = 8;
        line-height = 30;
        horizontal-pad = 20;
        terminal = "foot -e";
        dpi-aware = "no";
      };
      colors = {
        background = "FB958BFF";
        text = "c0caf5ff";
        match = "C0CAF5FF";
	opacity = "0.5";
        selection = "FB958BFF";
        selection-match = "FB958BFF";
        selection-text = "c0caf5ff";
        border = "0x66333333";
      };
      border = {
        width = 2;
      };
    };
  };
}
