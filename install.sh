#!/bin/bash

set -eu

DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

cd ~

echo "Linking .aliases"
ln -sf $DOTFILES_DIR/.aliases

echo "Linking .bash_profile"
ln -sf $DOTFILES_DIR/.bash_profile

echo "Linking .bashrc"
ln -sf $DOTFILES_DIR/.bashrc

echo "Linking .Brewfile"
ln -sf $DOTFILES_DIR/.Brewfile

echo "Linking .gitconfig"
ln -sf $DOTFILES_DIR/.gitconfig

echo "Linking .hushlogin"
ln -sf $DOTFILES_DIR/.hushlogin

echo "Linking .inputrc"
ln -sf $DOTFILES_DIR/.inputrc

echo "Linking starship config"
mkdir -p .config
ln -sf $DOTFILES_DIR/.config/starship.toml .config/starship.toml

echo "Linking lsd config"
mkdir -p .config/lsd
ln -sf $DOTFILES_DIR/.config/lsd/config.yaml .config/lsd/config.yaml
ln -sf $DOTFILES_DIR/.config/lsd/colors.yaml .config/lsd/colors.yaml

echo "Linking .vimrc"
mkdir -p .vim/backup .vim/swap .vim/view .vim/undo
ln -sf $DOTFILES_DIR/.vimrc

echo "Linking .zshrc"
ln -sf $DOTFILES_DIR/.zshrc

echo "Installing Homebrew bundle"
brew bundle install --global
brew bundle cleanup --global --force
