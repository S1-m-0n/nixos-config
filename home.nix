# home.nix
# personal home manager configuration

{ config, pkgs, ... }:

{
  
  home.username = "simon";
  home.homeDirectory = "/home/simon";

  home.packages = with pkgs; [

    tldr
    tree
    fzf
    zip
    unzip

  ];

  # basic git config
  programs.git = {
    enable = true;
    userName = "Simon";
    userEmail = "sim.joerz@gmail.com";
  };

  # configure zsh
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;	# enableAutosuggestions is renamed to it
    syntaxHighlighting.enable = true;
  };

  programs.kitty = {
    enable = true;
    shellIntegration.enableZshIntegration = true;
  };

  home.stateVersion = "24.05";

  programs.home-manager.enable = true;

}

