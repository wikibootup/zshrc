# Basic oh-my-zsh plugins
plugins=(git autoenv)

# Zsh plugin manager, zplug
# https://github.com/zplug/zplug
export ZPLUG_HOME=$HOME/.zplug
source $ZPLUG_HOME/init.zsh

zplug "zplug/zplug"
zplug "tonyseek/oh-my-zsh-virtualenv-prompt"
zplug "felixr/docker-zsh-completion"

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load --verbose
