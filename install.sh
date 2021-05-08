#!/bin/bash


##nvim
mkdir -p "$HOME/.config/nvim"
mkdir -p "$HOME/.config/nvim/undo"

ln -sf "$HOME/.files/nvim/init.vim" "$HOME/.config/nvim"
