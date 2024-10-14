# My personal NeoVim config

## Requirements
- [ripgrep](https://github.com/BurntSushi/ripgrep):
  for live\_grep functionality of telescope

## Plug-ins
- Vim Motions
    - [x] [surround.vim](https://github.com/tpope/vim-surround)
    - [x] [comment.nvim](https://github.com/numToStr/Comment.nvim)
- Visual
    - [x] [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
    - [x] [gruvbox.nvim](https://github.com/ellisonleao/gruvbox.nvim)
- File Access
    - [x] [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
    - [x] [telescope-fzf-native](https://github.com/nvim-telescope/telescope-fzf-native.nvim)
    - [ ] [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)
- Language server
    - [x] [lsp-zero](https://github.com/VonHeikemen/lsp-zero.nvim)
- Git access
    - [ ] [vim-fugitive](https://github.com/tpope/vim-fugitive)

### To consider
- [mini.surround](https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-surround.md)
  to highlit where the curser is (word, function and braces) and also adds surround actions
  like adding braces arround a word
    - would replace surround.vim
    - mapping seems to be a bit more intuitive, like 'sa' for "surround add"
- [mini.animate](https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-animate.md)
  to animate jumps. This could help to not get lost while jumping between lines.
    - [neoscroll](https://github.com/karb94/neoscroll.nvim) seems to be a sane alternative
