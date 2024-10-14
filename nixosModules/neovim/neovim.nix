{ config, pkgs, unstable }:

{
  
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    extraConfig = lib.fileContents ./init.lua;
  };

}

