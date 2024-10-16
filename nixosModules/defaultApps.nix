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
    yazi

    python3

    firefox

  ]) ++ (with unstable; [

    bitwarden-desktop

  ]);
}

