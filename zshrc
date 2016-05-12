# @author     wikibootup <http://github.com/wikibootup>
# @license    http://opensource.org/licenses/gpl-license.php
# References
# - https://github.com/seebi/zshrc
# - https://github.com/dahlia/nvimrc

# source all the zsh configurations
zsh_dir="$HOME/.config/zsh"
source "$zsh_dir/environment.zsh"
source "$zsh_dir/aliases.zsh"
source "$zsh_dir/plugins.zsh"

# oh-my-zsh settings
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="agnoster"

source $ZSH/oh-my-zsh.sh
