#!/bin/bash

########
# nvim #
########

mkdir -p "$HOME/.config/nvim"
mkdir -p "$HOME/.config/nvim/undo"
ln -sf "$HOME/.files/nvim/init.vim" "$HOME/.config/nvim/init.vim"

######
# i3 #
######

rm -rf "$HOME/.config/i3"
ln -s "$HOME/.files/i3" "$HOME/.config"

#######
# zsh #
#######

mkdir -p "$HOME/.config/zsh/"
ln -sf "$HOME/.files/zsh/.zshenv" "$HOME"
ln -sf "$HOME/.files/zsh/.zshrc" "$HOME/.config/zsh"

rm -rf "$HOME/.config/zsh/external"
ln -sf "$HOME/.files/zsh/external" "$HOME/.config/zsh"
