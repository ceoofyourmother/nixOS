{
  programs.fuzzel = {
    enable = true;
    settings = {
      main = {
        font = "JetBrains Mono Nerd Font 10.6";
	filter-desktop = true;
        width = 40;
        lines = 8;
        line-height = 30;
        horizontal-pad = 20;
        terminal = "foot -e";
        dpi-aware = "no";
      };
      colors = {
        background = "000000fc";
        text = "D8DEE9FF";
        match = "1A1B26FF";
        selection = "23272EFF";
        selection-match = "88C0D0FF";
        selection-text = "fff";
        border = "3b425200";
      };
    border = {
    	width = 3;
    };
    };
  };
}
