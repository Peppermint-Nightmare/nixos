{ config, pkgs, ... }:

{
  system.stateVersion = "17.09";

  imports =
    [
      ./hardware-configuration.nix
      ./setups/laptop.nix
      ./system/common.nix
      ./system/users.nix
      ./software/fonts
      ./software/packages.nix
      ./software/devPackages.nix
      ./networking/ssh.nix
      ./networking/wifi.nix
      ./environments/greeter.nix
      ./environments/i3.nix
    ];
}
