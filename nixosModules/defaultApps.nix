# nixosModules/defaultApps.nix

{ config, pkgs, unstable, ...}: 

{
  # packages isntalled in system profile
  environment.systemPackages = (with pkgs; [

    zsh
    kitty

    wget
    git
    neovim

    firefox

  ]) ++ (with unstable; [

    bitwarden-desktop

  ]);
}

