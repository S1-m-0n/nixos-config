# nixosModules/defaultApps.nix
# this module packs python3 with some often used packages

{ pkgs, ... }:

{

  environment.systemPackages = (with pkgs; [

    python312

  ]) ++ (with pkgs.python312Packages; [

    matplotlib
    numpy
    pandas

  ]);

}

