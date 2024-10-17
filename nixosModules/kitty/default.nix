# nixosModules/kitty/default.nix
# home-manager configuration for terminal emulator kitty

{ pkgs, ... }:

{

  programs.kitty = {
    enable = true;
  };
  
  home.file."./.config/kitty/" = {
    source = ./config;
    enable = true;
  };

}

