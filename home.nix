# home.nix
# personal home manager configuration

{ config, pkgs, ... }:

{

  imports = [
    ./nixosModules/neovim/neovim.nix
    ./nixosModules/yazi/yazi.nix
  ];
  
  home.username = "simon";
  home.homeDirectory = "/home/simon";

  fonts = {
    # packages = with pkgs; [
    #   (nerdfonts.override { fonts = [ "Hack" ]; })
    # ];

    fontconfig.enable = true;

    # fontconfig = {
    #   defaultFonts = {
    #     serif = [ "Hack Serif" ];
    #     sansSerif = [ "Hack" ];
    #     monospace = [ "Hack Mono" ];
    #   };
    # };
  };

  home.packages = with pkgs; [

    tldr
    tree
    fzf
    zip
    unzip
    lazygit

    (nerdfonts.override { fonts = [ "Hack" ]; })

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

