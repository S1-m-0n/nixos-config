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

    # windows keybindings
    "org/gnome/desktop/wm/keybindings" = {
      close = [ "<Super>q" ];
    };

    # media key bindings
    "org/gnome/settings-daemon/plugins/media-keys" = {

      # keybinding for launching the browser
      www = [ "<Super>b" ];

      # custom keybindings are declared here
      custom-keybindings = [
        "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal/"
      ];

    };

    # custom keybinding to launch terminal is defined here
    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal" = {
      name = "Launch Terminal";
      command = "kitty";
      binding = "<Super>t";
    };

  };

}

