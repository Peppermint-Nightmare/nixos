{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    R
    rstudio
    weka
    scala
    sbt
    jre
    jdk
    ant
    python3
    hadoop
    spark
    docker
    filezilla
    mongodb
  ];
  virtualisation.docker.enable = true;
}
