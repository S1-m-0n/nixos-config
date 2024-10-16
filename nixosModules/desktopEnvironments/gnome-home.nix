# nixosModules/desktopEnvironments/gnome-home.nix
# home config for gnome

{ pkgs, lib, ... }:

{

  dconf.settings = {

    # enable = true;

    # dark mode
    "org/gnome/desktop/interface".color-scheme = "prefer-dark";

    # keyboard layout, gnome overwrites settings by set by X11
    "org/gnome/desktop/input-sources" = {
      show-all-sources = true;
      # sources = "[('xkb', 'de'), ('xkb', 'de+neo_qwertz')]";
      sources = [ (lib.gvariant.mkTuple [ "xkb" "de" ]) (lib.gvariant.mkTuple [ "xkb" "de+neo_qwertz" ]) ];
      xkb-options = [ "terminate:ctrl_alt_bksp" ];

    };

  };

}

