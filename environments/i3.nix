{ config, pkgs, ... }:

{
  # Configure i3
  services.xserver.windowManager.i3 = {
    enable=true;
    package = pkgs.i3-gaps;
    extraPackages = with pkgs; [ i3status i3lock ];
  };

  # Configure compositor
  services.compton = {
    enable = true;
    fade = true;
    fadeDelta = 4;
    fadeSteps = ["0.03" "0.03"];
    shadow = true;
    #shadowOffsets = [ 7 7 ];
    shadowOpacity = "0.8";
    shadowExclude = ["name ~= 'i3bar'" "window_type *= 'menu'"];
    vSync = "opengl-swc";
  };

  # i3 specific packages
  environment.systemPackages = with pkgs; [
    feh scrot imagemagick     # xlocker specific tools
    rofi
    lxappearance-gtk3
    xfce.terminal
    xfce.thunar xfce.gvfs
    # theming
    gnome3.gtk gtk2-x11 polkit polkit_gnome
    flat-plat arc-icon-theme gtk-engine-murrine
    gnome3.gnome_themes_standard hicolor_icon_theme
  ];
}
