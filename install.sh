#!/bin/bash


##nvim
# make directory containing nvim configuration and undo files.
mkdir -p "$HOME/.config/nvim"
mkdir -p "$HOME/.config/nvim/undo"

# create symbolic link
ln -sf "$HOME/.files/nvim/init.vim" "$HOME/.config/nvim"

##zsh
# make directory containing zsh configuration and env variable files.
mkdir -p "$HOME/.config/zsh"

# create symlinks
ln -sf "$HOME/.files/zsh/.zshenv" "$HOME"
ln -sf "$HOME/.files/zsh/.zshrc" "$HOME/.config/zsh"

# create alias soft link
ln -sf "$HOME/.files/zsh/aliases" "$HOME/.config/zsh/aliases"

rm -rf "$HOME/.config/zsh/external"

ln -sf "$HOME/.files/zsh/external" "$HOME/.config/zsh"
