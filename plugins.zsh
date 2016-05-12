# Basic oh-my-zsh plugins
plugins=(git autoenv)

# Zsh plugin manager, zplug
# https://github.com/zplug/zplug
zplug "tonyseek/oh-my-zsh-virtualenv-prompt"

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
# "zplug load" without $ causes an error in git packages
$(zplug load)
