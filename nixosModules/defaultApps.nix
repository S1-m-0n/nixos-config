# nixosModules/defaultApps.nix

{ config, pkgs, unstable, ...}: 

{

  imports = [
    ./python312.nix
  ];

  # packages isntalled in system profile
  environment.systemPackages = (with pkgs; [

    zsh
    kitty

    wget
    git
    neovim
    yazi
    tmux

    firefox

  ]) ++ (with unstable; [

    bitwarden-desktop

  ]);
}

