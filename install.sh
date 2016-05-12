#!/bin/bash

# References
# - https://github.com/dahlia/nvimrc/blob/master/install.sh

# Link neovim configuration to ~/.config/zsh
zshrc_name="zhsrc"
src_zshrc_dir="$(pwd)"
src_zshrc="$src_zsh_dir/$zshrc_name"
dst_zsh_dir="$HOME/.config/zsh"
dst_zshrc="$dst_zsh_dir/$zshrc_name"
echo "Zsh configuration directory: $dst_zsh_dir"
if [[ ! -f "$dst_zshrc" || "$(cat "$src_zshrc")" != "$(cat "$dst_zshrc")" ]]
then
  rm -f "$dst_zsh_dir"
  ln -sfi $src_zshrc_dir $dst_zsh_dir
fi