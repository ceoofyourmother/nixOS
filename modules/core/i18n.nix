{ config, pkgs, ... }:
 {
   i18n.inputMethod = {
     type = "fcitx5";
     enable = true;
     fcitx5.addons = with pkgs; [
       fcitx5-gtk             # alternatively, kdePackages.fcitx5-qt
       fcitx5-configtool  # config tool app
       fcitx5-mozc      # para conseguir escrever em romaji, e converter pra kana

     ];
   };
 }
