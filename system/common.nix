{ config, pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;

  # Locale settings
  time.timeZone = "Europe/London";
  i18n = {
    consoleFont = "Lat2-Terminus16";
    consoleKeyMap = "uk";
    defaultLocale = "en_US.UTF-8";
  };

  services.xserver.autoRepeatDelay = 350;
  services.xserver.autoRepeatInterval = 22;

  programs.bash.shellAliases = {
    ls="ls --color=auto";
    l="ls";
    ll="ls -Al";
    la="ls -A";

    dt="cd ~/Desktop ; clear ; pwd ; ls";
    dl="cd ~/Downloads ; clear ; pwd ; ls";
    gh="cd ~/Git ; clear ; pwd ; ls";
    qm="cd ~/Dropbox/QMUL ; clear ; pwd ; ls";
    cf="cd /etc/nixos/ ; clear ; pwd ; ls";

    treee="tree -a -I '.git'";
  };
}
