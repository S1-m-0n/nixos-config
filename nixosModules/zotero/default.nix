# zotero.nix
# home-manager configuration for zotero

{ pkgs, unstable, ... } :

{

  home.packages = with unstable; [
    zotero
  ];

}

