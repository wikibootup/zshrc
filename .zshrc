# @author     wikibootup <http://github.com/wikibootup>
# @license    http://opensource.org/licenses/gpl-license.php
# References
# - https://github.com/seebi/zshrc
# - https://github.com/dahlia/nvimrc

# source all the zsh configurations
zsh_dir="$HOME/.config/zshrc"
source "$zsh_dir/environment.zsh"
source "$zsh_dir/aliases.zsh"
source "$zsh_dir/plugins.zsh"

# oh-my-zsh settings
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="agnoster"
source $ZSH/oh-my-zsh.sh

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Z
# https://github.com/rupa/z
source "$zsh_dir/z.sh"

# @NOTE - It makes zsh init slow. Therefore it was commented.
# NVM : Node version manager
# https://github.com/creationix/nvm
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
