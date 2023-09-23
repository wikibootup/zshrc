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
  zsh_dir="$HOME/dotfiles/zshrc"
  # source "$zsh_dir/environment.zsh"  # It causes a lag
  source "$zsh_dir/aliases.zsh"
  source "$zsh_dir/plugins.zsh"

  # Brew packages list (github.com/wikibootup/dotfiles/brew-packages.txt)
  . $HOMEBREW_PREFIX/etc/profile.d/z.sh
  . $HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

  # pyenv
  eval "$(pyenv init -)"

  # @NOTE - It makes zsh init slow. Therefore it was commented.
  # NVM : Node version manager
  # https://github.com/creationix/nvm
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
  export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"

  # For rabbitmq-server
  export PATH=$PATH:/usr/local/sbin

  # Terminal history by up/down arrow key
  export HISTCONTROL=ignoreboth
  # After each command, save and reload history
  export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

