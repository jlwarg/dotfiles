# Created by jlwarg for 5.2

# python virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/devel/projects
source /usr/bin/virtualenvwrapper.sh

# sane editor setting
export EDITOR=vim
export VISUAL=vim

# ignore duplicate lines in history
setopt HIST_IGNORE_DUPS
# prompt substitution? TODO: look it up
setopt prompt_subst

# Make 'Home' and 'End' keys work correctly
bindkey "${terminfo[khome]}" beginning-of-line
bindkey "${terminfo[kend]}" end-of-line

# History search
[[ -n "${key[PageUp]}"    ]] && bindkey "$key[PageUp]}" history-beginning-search-backward
[[ -n "${key[PageDown]}"  ]] && bindkey "$key[PageDown]}" history-beginning-search-backward

# set autocompletion and prompt
autoload -U compinit colors vcs_info
# autocompletion
compinit
# arrow-key driven autocomplete
zstyle ':completion:*' menu select
# colors
colors

precmd() {
    # getting vcs info into prompt
    vcs_info
}
# we use only git here
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' formats "%b"

# python virtualenv
# inspired by http://github.com/tonyseek/oh-my-zsh-virtualenv-prompt
# not prompt fiddling by virtualenvwrapper itself
export VIRTUAL_ENV_DISABLE_PROMPT=1
virtualenv_prompt_info() {
    if [ -n "$VIRTUAL_ENV" ]; then
        if [ -f "$VIRTUAL_ENV" ]; then
            local name=`cat $VIRTUAL_ENV/__name__`
        elif [ `basename $VIRTUAL_ENV` = "__" ]; then
            local name=$(basename $(dirname $VIRTUAL_ENV))
        else
            local name=$(basename $VIRTUAL_ENV)
        fi
        echo "[$name]"
    fi
}

# set default prompt
PROMPT="%F{green}|- %B%n@%m: %~%b %F{green}---- %f%F{yellow}$(virtualenv_prompt_info)%f%F{green} ----
|->%f "
RPROMPT='%{$fg[blue]%}${vcs_info_msg_0_}%{$reset_color%}'
