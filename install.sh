#!/bin/bash

# References
# - https://github.com/dahlia/nvimrc/blob/master/install.sh

oh_my_zsh=$HOME/.oh-my-zsh
if [[ ! -d "$oh_my_zsh" ]]
then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

# Link zsh configuration to ~/.config/zsh
zshrc_name="zhsrc"
src_zshrc_dir="$(pwd)"
src_zshrc="$src_zsh_dir/$zshrc_name"
dst_zsh_dir="$HOME/.config/zsh"
dst_zshrc="$dst_zsh_dir/$zshrc_name"
echo "Zsh configuration directory: $dst_zsh_dir"
if [[ ! -f "$dst_zshrc" || "$(cat "$src_zshrc")" != "$(cat "$dst_zshrc")" ]]
then
  rm -f "$dst_zsh_dir"
  ln -sfi "$src_zshrc_dir" "$dst_zsh_dir"
else
  echo "Zsh already configured"
fi

# Download zplug, zsh plugin manager
zplug_home="$HOME/.zplug"
zplug_home_brew="/usr/local/opt/zplug"
echo "Zplug directory: $zplug_home"
if [[ ! -d "$zplug_home" && ! -d "$zplug_home_brew" ]]
then
  git clone https://github.com/zplug/zplug $zplug_home
else
  echo "Zplug already installed."
fi

echo "Completed!"
