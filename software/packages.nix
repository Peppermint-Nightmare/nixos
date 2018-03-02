{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    git
    tree
    ranger
    wget
    parted
    atom
    chromium
    firefox
    dropbox
    unar
    spotify
    usbutils
  ];
}
