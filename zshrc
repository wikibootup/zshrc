# @author     wikibootup <http://github.com/wikibootup>
# @license    http://opensource.org/licenses/gpl-license.php
# References
# - https://github.com/seebi/zshrc
# - https://github.com/dahlia/nvimrc

# First include of the environment
source $HOME/.config/zsh/environment.zsh

ZSH_THEME="agnoster"
plugins=(git)

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

if [ -f "~/.zshrc.local" ]; then
  source .zshrc.local
fi
