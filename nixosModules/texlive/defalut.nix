# nixosModules/texlive/default.nix
# home-manager configuration for texlive

{ pkgs, ... }:

let
  tex = (pkgs.texlive.combine {
    inherit (pkgs.texlive)
    scheme-basic
  });
in {

  home.packages = with pkgs; [
    tex
  ];

}

