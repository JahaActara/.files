#!/bin/bash

######
# i3 #
######

rm -rf "$HOME/.config/i3"
ln -s "$HOME/.files/i3" "$HOME/.config"

##nvim
# make directory containing nvim configuration and undo files.
mkdir -p "$XDG_CONFIG_HOME/nvim"
mkdir -p "$XDG_CONFIG_HOME/nvim/undo"

# create symbolic link
ln -sf "$DOTFILES/nvim/init.vim" "$XDG_CONFIG_HOME/nvim"

##zsh
# make directory containing zsh configuration and env variable files.
mkdir -p "$XDG_CONFIG_HOME/zsh"

# create symlinks
ln -sf "$DOTFILES/zsh/.zshenv" "$HOME"
ln -sf "$DOTFILES/zsh/.zshrc" "$XDG_CONFIG_HOME/zsh"

# create alias soft link
ln -sf "$DOTFILES/zsh/aliases" "$XDG_CONFIG_HOME/zsh/aliases"

rm -rf "$XDG_CONFIG_HOME/zsh/external"

ln -sf "$DOTFILES/zsh/external" "$XDG_CONFIG_HOME/zsh"

##alacritty
# create config file soft link
ln -sf "$DOTFILES/alacritty/alacritty.yml" "$XDG_CONFIG_HOME/alacritty"

############
# Fonts ####
############

mkdir -p "$XDG_DATA_HOME"
cp -rf "$DOTFILES/fonts" "$XDG_DATA_HOME"
