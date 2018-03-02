{ config, pkgs, ... }:

{
  # Start xserver
  services.xserver.enable = true;

  # Configure display manager
  services.xserver.displayManager.lightdm = {
    enable = true;
    #background = "/stuff/lockscreen.jpg";
    #greeters.gtk.enable = true;
    #autoLogin.user = "matt";
    #autoLogin.enable = true;
  };
}
