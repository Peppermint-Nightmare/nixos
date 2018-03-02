{ config, pkgs, ... }:

{
  fonts = {
    enableFontDir = true;
    enableGhostscriptFonts = true;
    fonts = with pkgs; [
      #corefonts broken?
      hack-font
      iosevka
    ];
  };
}
