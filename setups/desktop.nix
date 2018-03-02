{ config, pkgs, ... }:

{
  # EFI / systemd boot
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Audio output
  hardware.pulseaudio={
    enable = true;
    extraClientConf = "set-default-sink alsa_output.pci-0000_01_00.1.hdmi-stereo-extra2";
  };

  # Video driver
  services.xserver = {
    enable = true;
    layout = "gb";
    videoDrivers = [ "nvidia" ];
  };
}
