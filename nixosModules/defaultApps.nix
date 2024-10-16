# nixosModules/defaultApps.nix

{ config, pkgs, unstable, ...}: 

{

  import = [
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

    firefox

  ]) ++ (with unstable; [

    bitwarden-desktop

  ]);
}

