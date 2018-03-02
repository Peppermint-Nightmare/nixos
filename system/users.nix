{ config, pkgs, ... }:

{
  users.extraUsers.matt = {
    isNormalUser = true;
    home="/home/matt";
    extraGroups = ["wheel" "networkmanager" "audio" "docker"];
    uid = 1000;
  };
}
