# yazi.nix
# configuration for the terminal file explorer yazi (with vim-like bindings)

{ pkgs, ...}:

{

  home.packages = with pkgs; [
    yazi
  ];

  programs.yazi = {
    enable = true;
  };

  home.file."./.config/yazi/yazi.toml" = {
    source = ./yazi.toml;
  };

}

