# nixosModules/defaultApps.nix

{ pkgs, unstable, ...}: 

{
  # packages isntalled in system profile
  environment.systemPackages = (with pkgs; [

    zsh
    zsh-autosuggestions
    zsh-syntax-highliting
    kitty

    wget
    git
    neovim
    tldr

    firefox
    thunderbird
    discord
    spotify
    obsidian

  ]) ++ (with unstable; [

    bitwarden-desktop
    ticktick

  ]);
}
