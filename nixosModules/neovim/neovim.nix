# neovim.nix
# home-manager configuration for neovim
# packages are managed mainly by lazy: out of compatability reasons
# inspired by: https://github.com/Kidsan/nixos-config/blob/main/home/programs/neovim/default.nix
# TODO: Migrate from Mason.nvim to lazy-lsp.nvim

{ config, pkgs, unstable, ... }:

{

  # language server for commonly used languages
  home.packages = with pkgs; [
    pyright
    metals
  ];
  
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    # extraConfig = pkgs.lib.fileContents ./init.lua;

    plugins = [

      # treesitter is managed directly via nix
      (pkgs.vimPlugins.nvim-treesitter.withPlugins (p: [
        p.bash
        p.c
        p.comment
        p.cpp
        p.css
        p.fish
        p.gitattributes
        p.gitignore
        p.go
        p.json5
        p.json
        p.latex
        p.lua
        p.make
        p.markdown
        p.nix
        p.python
        p.query
        p.toml
        p.vim
        p.vimdoc
        p.yaml
      ]))

    ];

  };

  # home.file."./init.lua".text = ''
  # '';

  # symlink `./config` (form /nix/store) to `/home/user/.config/nvim/`
  home.file."./.config/nvim/" = {
    source = ./config;
    recursive = true;
  };

}

