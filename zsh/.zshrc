# $DOTFILES/zsh/.zshrc

source ~/.files/zsh/aliases

autoload -Uz compinit; compinit

# autocomplete hidden files
_comp_options+=(globdots)
source ~/.files/zsh/external/completion.zsh

fpath=($ZDOTDIR/external $fpath)

# This is where I put the prompt setup. set it as comment.
autoload -Uz prompt_purification_setup && prompt_purification_setup

# Push the current directory visited on to the stack
setopt AUTO_PUSHD
# Do not store duplicate directories in the stack.
setopt PUSHD_IGNORE_DUPS
# Do not print the directory stack after using pushd or popd
setopt PUSHD_SILENT

setopt AUTO_PARAM_SLASH
unsetopt CASE_GLOB

# zsh with vi mode
bindkey -v
export KEYTIMEOUT=1

autoload -Uz cursor_mode && cursor_mode

zmodload zsh/complist
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

autoload -Uz edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line

# get zsh completions 
#
# get zsh syntax highlighting 

# bd is like cd but different
source ~/.files/zsh/external/bd.zsh
# source scripts
source $DOTFILES/zsh/scripts.sh

# fuzzy finder
if [ $(command -v "fzf") ]; then
    source /usr/share/fzf/completion.zsh
    source /usr/share/fzf/key-bindings.zsh
fi

# i3 startup
if [ "$(tty)" = "/dev/tty1" ];
then
    pgrep i3 || exec startx "$XDG_CONFIG_HOME/X11/.xinitrc"
fi

# add julia's bin folder to path
export PATH="$PATH:/home/jaha/julia/julia-1.6.0/bin"

# zsh syntax highlighting(should be at the bottom of everything else)
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
