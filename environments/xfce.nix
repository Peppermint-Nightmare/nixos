{ config, pkgs, ... }:

{
  # Start xserver
  services.xserver.enable = true;

  # Configure display manager
  services.xserver.displayManager.lightdm = {
    enable = true;
    background = "/stuff/lockscreen.jpg";
    #greeters.gtk.enable = true;
    #autoLogin.user = "matt";
    #autoLogin.enable = true;
  };

  # Configure i3
  services.xserver.windowManager.xfce = {
    enable=true;
  };

  # i3 specific packages
  environment.systemPackages = with pkgs; [
    # theming
    gnome3.gtk gtk2-x11 polkit polkit_gnome
    flat-plat arc-icon-theme gtk-engine-murrine
    gnome3.gnome_themes_standard hicolor_icon_theme
  ];
}
