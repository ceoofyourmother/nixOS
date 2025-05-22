{ ... }:
{
  programs.waybar.settings.mainBar = {
    position= "top";
    layer= "top";
    height= 30;
    margin-top= 0;
    margin-bottom= 0;
    margin-left= 10;
    margin-right= 10;
    spacing = 5;
    modules-left = ["custom/launcher" "cpu" "memory" "hyprland/workspaces" "custom/weather"];
    modules-center= [
        "custom/spotify"
    ];
    modules-right= ["tray" "pulseaudio" "clock"];
    clock= {
        format = "<span color='#bf616a'> </span>{:%a %b %d}";
        tooltip= "true";
        tooltip-format= "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
        format-alt= "<big>{:%B %Y}</big>\n<tt><small>{calendar}</small></tt>";
    };
    "hyprland/workspaces"= {
        active-only= false;
        disable-scroll= true;
        format = "{icon}";
        on-click= "activate";
        format-icons= {
        "1" = "";
        "2" = "";
        "3" = "";
        "4" ="";
        "5" = "";
        "urgent" = "";
        "active" = "";
        "default" = "";
        };
        persistent-workspaces = {
            "1"= [];
            "2"= [];
            "3"= [];
            "4"= [];
            "5"= [];
        };
    };
    memory= {
        format= " {}%";
        format-alt= " {used:0.1f}G"; # 
        interval= 30;
    };
    cpu= {
        format= "  {}%";
        interval= 10;
    };
    # network = {
    #     format-wifi = "  {signalStrength}%";
    #     format-ethernet = "󰀂 ";
    #     tooltip-format = "Connected to {essid} {ifname} via {gwaddr}";
    #     format-linked = "{ifname} (No IP)";
    #     format-disconnected = "󰖪 ";
    # };
    tray= {
        spacing= 10;
    };
    pulseaudio= {
        format= "{icon} {volume}%";
        format-muted= "  {volume}%";
        format-icons= {
            default= [" "];
        };
        scroll-step= 5;
        on-click= "pamixer -t";
    };
    # battery = {
    #     format = "{icon} {capacity}%";
    #     format-icons = [" " " " " " " " " "];
    #     format-charging = " {capacity}%";
    #     format-full = " {capacity}%";
    #     format-warning = " {capacity}%";
    #     interval = 5;
    #     states = {
    #         warning = 20;
    #     };
    #     format-time = "{H}h{M}m";
    #     tooltip = true;
    #     tooltip-format = "{time}";
    # };
    # "custom/launcher"= {
    #     format= "";
    #     on-click= "fuzzel";
    #     on-click-right= "wallpaper-picker"; 
    #     tooltip= "false";
    # };
"bluetooth" = {
        format = " {status}";
	format-disabled = "";
	tooltip-format = "{device_alias}";
	tooltip-format-connected = " {device_enumerate}";
	tooltip-format-enumerate-connected = "{device_alias}";
    };
    "custom/notification" = {
        tooltip = false;
        format = "{icon} ";
        format-icons = {
            notification = "<span foreground='red'><sup></sup></span>   ";
              none = "   ";
            dnd-notification = "<span foreground='red'><sup></sup></span>   ";
            dnd-none = "   ";
            inhibited-notification = "<span foreground='red'><sup></sup></span>   ";
            inhibited-none = "   ";
            dnd-inhibited-notification = "<span foreground='red'><sup></sup></span>   ";
            dnd-inhibited-none = "   ";
        };
        return-type = "json";
        exec-if = "which swaync-client";
        exec = "swaync-client -swb";
        on-click = "swaync-client -t -sw";
        on-click-right = "swaync-client -d -sw";
        escape = true;
    };
    "custom/spotify" = {
        exec = "python3 ~./.config/waybar/scripts/mediaplayer.py --player spotify";
        format = "{} ";
        return-type = "json";
        on-click = "playerctl play-pause";
        on-double-click-right ="playerctl next";
        on-scroll-down = "playerctl previous";
    };
  };
}

