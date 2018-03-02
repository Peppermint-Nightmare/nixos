{ config, pkgs, ... }:

{
  networking.wireless.enable = true;

  networking.wireless.networks={
    "Little-Kiwi-Bird" = { psk = "a3bfc5e9e8"; };
  };
}
