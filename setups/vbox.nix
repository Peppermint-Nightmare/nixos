{ config, pkgs, ... }:

{
  # Grub bootloader
  boot.loader.grub.enable = true;
  boot.loader.grub.version = 2;
  boot.loader.grub.device = "/dev/sda";
  boot.initrd.checkJournalingFS = false;

  # Virtualbox additions
  environment.systemPackages = with pkgs; [
    linuxPackages.virtualboxGuestAdditions
  ];

  # File sharing - APPEARS TO BREAK NIXOS, BEWARE
  #fileSystems."/VMShare" = {
  #  fsType = "vboxfs";
  #  device = "VMShare";
  #  options = [ "rw" ];
  #};
}
