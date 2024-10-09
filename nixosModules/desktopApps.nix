# nixosModules/desktopApps.nix
# module for default desktop apps

{ config, pkgs, unstable, ... }:
{
  
  environment.systemPackages = (with pkgs; [

    thunderbird
    discord
    spotify
    obsidian

  ]) ++ (with unstable; [

    ticktick

  ]);

}
