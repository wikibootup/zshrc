# @author     wikibootup <http://github.com/wikibootup>
# @license    http://opensource.org/licenses/gpl-license.php
# References
# - https://github.com/seebi/zshrc
# - https://github.com/dahlia/nvimrc

# oh-my-zsh settings
# @NOTE - It should be placed at the top
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="agnoster"
source $ZSH/oh-my-zsh.sh

# source all the zsh configurations
zsh_dir="$HOME/.config/zshrc"
source "$zsh_dir/environment.zsh"
source "$zsh_dir/aliases.zsh"
source "$zsh_dir/plugins.zsh"

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Z
# https://github.com/rupa/z
source "$zsh_dir/z.sh"


# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# @NOTE - It makes zsh init slow. Therefore it was commented.
# NVM : Node version manager
# https://github.com/creationix/nvm
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
