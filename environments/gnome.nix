{ config, pkgs, ... }:

{
  # Network manager
  # networking.networkmanager.enable = false;

  # Gnome desktop
  services.xserver.desktopManager.gnome3 = {
    enable=true;
  };

  # Gnome specific packages
  environment.systemPackages = with pkgs; [
    gnome3.gnome-tweak-tool
    gnome3.gnome_terminal
  ];
}
