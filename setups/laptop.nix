{ config, pkgs, ... }:

{
  # EFI / systemd boot
  boot = {
    loader.systemd-boot.enable = true;
    loader.efi.canTouchEfiVariables = true;
    
    extraModulePackages = with config.boot.kernelPackages; [ mba6x_bl ];
    kernelModules = [ "mba6x_bl" ];

    # Divides power consumption by two.
    kernelParams = [ "acpi_osi=" ];
  };

  # Audio output
  hardware.pulseaudio={
    enable = true;
  };

  # Touchpad
  services.xserver.libinput = {
    enable = true;
    naturalScrolling = true;
    disableWhileTyping = true;
  };

 services.xserver.deviceSection = lib.mkDefault ''
  Option "Backlight" "mba6x_backlight"
  Option "TearFree" "true"
'';
}
