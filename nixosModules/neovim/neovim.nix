{ config, pkgs, unstable, ... }:

{
  
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    # extraConfig = pkgs.lib.fileContents ./init.lua;
  };

  # home.file."./init.lua".text = ''
  # '';

  home.file."./.config/nvim/" = {
    source = ./config;
    recursive = true;
  };

}

