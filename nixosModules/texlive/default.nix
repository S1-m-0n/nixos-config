# nixosModules/texlive/default.nix
# home-manager configuration for texlive
# this is for simple on the fly stuff, for more complex use a dedicated dev-env

# interesting post: https://discourse.nixos.org/t/new-tex-live-withpackages-function/34902
# may make it easier to include packages

# it may be easier to use a dev-environment for bigger latex projects, then to install a big set
# of packages, or even the full scheme

{ pkgs, ... }:

let
  tex = (pkgs.texlive.combine {
    inherit (pkgs.texlive)
    scheme-basic
    # scheme-medium
    # scheme-full
    # svg   # include svg images
    # tuda-ci urcls anyfontsize xcharter xstring fontaxes roboto adjustbox trimspaces   # tu-darmstadt templates
    ;
  });
in {

  home.packages = with pkgs; [
    tex
  ];

}

