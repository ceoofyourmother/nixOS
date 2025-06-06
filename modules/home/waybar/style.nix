{ ... }:
let custom = {
    font = "JetBrainsMono Nerd Font";
    font_size = "15px";
    font_weight = "bold";
    text_color = "#6a92d7";
    background = "rgba(26, 27, 38, 0.5)";
};
in 
{
  programs.waybar.style = ''


window#waybar {
  background-color: rgba(126, 127, 138, 0.5);
  color: #fff;
  transition-property: background-color;
  transition-duration: 0.5s;
  border-top: transparent;
  /* border-radius: 8px; */
  transition-duration: 0.5s;
  /* margin: 16px 16px; */
}

window#waybar.hidden {
  opacity: 0.2;
}

#workspaces button {
  padding: 0 5px;
  color: #cdd6f4;
  opacity: 0.8;
  background-color: transparent;
  /* Use box-shadow instead of border so the text isn't offset */
  box-shadow: inset 0 -3px transparent;
  /* Avoid rounded borders under each workspace name */
  border: none;
  border-radius: 0;
}

#workspaces button.focused {
  color: #2E62A6;
}

#workspaces button.active {
  color: #2E62A6;
}

#workspaces button.urgent {
  background-color: #eb4d4b;
}

#window {
  /* border-radius: 20px; */
  /* padding-left: 10px; */
  /* padding-right: 10px; */
  color: #64727d;
}

#clock,
#battery,
#cpu,
#memory,
#disk,
#temperature,
#backlight,
#network,
#pulseaudio,
#custom-media,
#tray,
#mode,
#idle_inhibitor,
#mpd,
#bluetooth,
#custom-hyprPicker,
#custom-power-menu,
#custom-spotify,
#custom-weather,
#custom-weather.severe,
#custom-weather.sunnyDay,
#custom-weather.clearNight,
#custom-weather.cloudyFoggyDay,
#custom-weather.cloudyFoggyNight,
#custom-weather.rainyDay,
#custom-weather.rainyNight,
#custom-weather.showyIcyDay,
#custom-weather.snowyIcyNight,
#custom-weather.default {
  padding: 0 10px;
  color: #fff;
  /* color: #bf616a; */
  /*border-radius: 9.5px; */
  background-color: transparent;
}

#window,
#workspaces {
  margin: 0 4px;
  /* border-radius: 7.8px; */
  background-color: transparent;
}

#cpu {
  color: #fb958b;
  background-color: transparent;
}

#memory {
  color: #ebcb8b;
  background-color: transparent;
}

#custom-power-menu {
  border-radius: 9.5px;
  background-color: #1b242b;
  border-radius: 7.5px;
  padding: 0 5px;
}

#custom-launcher {
  background-color: transparent;
  color: #6a92d7;
  border-radius: 7.5px;
  padding: 0 3px;
}

#custom-weather.severe {
  color: #eb937d;
}

#custom-weather.sunnyDay {
  color: #c2ca76;
}

#custom-weather.clearNight {
  color: #cad3f5;
}

#custom-weather.cloudyFoggyDay,
#custom-weather.cloudyFoggyNight {
  color: #c2ddda;
}

#custom-weather.rainyDay,
#custom-weather.rainyNight {
  color: #5aaca5;
}

#custom-weather.showyIcyDay,
#custom-weather.snowyIcyNight {
  color: #d6e7e5;
}

#custom-weather.default {
  color: #dbd9d8;
}

/* If workspaces is the leftmost module, omit left margin */
.modules-left > widget:first-child > #workspaces {
  margin-left: 0;
}

/* If workspaces is the rightmost module, omit right margin */
.modules-right > widget:last-child > #workspaces {
  margin-right: 0;
}

#pulseaudio {
  color: #fff;
}

#backlight {
  /* color: #EBCB8B; */
  color: #ffffff;
}

#clock {
  color: #fff;
    /* background-color: #14141e; */
}

#battery {
  color: #2E62A6;
  /* background-color: #90b1b1; */
}

#battery.charging,
#battery.full,
#battery.plugged {
  color: #26a65b;
  /* background-color: #26a65b; */
}

@keyframes blink {
  to {
    background-color: rgba(30, 34, 42, 0.5);
    color: #abb2bf;
  }
}

#battery.critical:not(.charging) {
  color: #f53c3c;
  animation-name: blink;
  animation-duration: 0.5s;
  animation-timing-function: linear;
  animation-iteration-count: infinite;
  animation-direction: alternate;
}

label:focus {
  background-color: #000000;
}

#disk {
  background-color: #964b00;
}

#bluetooth {
  color: #707d9d;
}

#bluetooth.disconnected {
  color: #f53c3c;
}

#network {
  color: #b48ead;
}

#network.disconnected {
  color: #f53c3c;
}


#custom-media.custom-vlc {
  background-color: #ffa000;
}

#temperature {
  background-color: #f0932b;
}

#temperature.critical {
  background-color: #eb4d4b;
}

#tray > .passive {
  -gtk-icon-effect: dim;
}

#tray > .needs-attention {
  -gtk-icon-effect: highlight;
  background-color: #eb4d4b;
}

#idle_inhibitor {
  background-color: #2d3436;
}

#idle_inhibitor.activated {
  background-color: #ecf0f1;
  color: #2d3436;
}

#mpd {
  color: #2a5c45;
}

#mpd.disconnected {
  color: #f53c3c;
}

#mpd.stopped {
  color: #90b1b1;
}

#mpd.paused {
  color: #51a37a;
  color: #c0caf5;
  border-radius: 7px;
  margin-right: 5px;
  border-right: 0px;
}

#language {
  background: #00b093;
  color: #740864;
  padding: 0 5px;
  margin: 0 5px;
  min-width: 16px;
}

#keyboard-state {
  background: #97e1ad;
  color: #000000;
  padding: 0 0px;
  margin: 0 5px;
  min-width: 16px;
}

#keyboard-state > label {
  padding: 0 5px;
}

#mpris {
  color: #fff;
 /* old color cdd6f4 */
  opacity: 0.8;
}

#keyboard-state > label.locked {
  background: rgba(0, 0, 0, 0.2);
}
  '';
}
