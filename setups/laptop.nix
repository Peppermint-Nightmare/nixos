{ config, pkgs, ... }:

{
  # EFI / systemd boot
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Audio output
  hardware.pulseaudio={
    enable = true;
  };

  # Touchpad
  services.xserver.libinput.enable = true;
  services.xserver.libinput.naturalScrolling = true;
}
