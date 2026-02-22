# dotfiles-mac

Personal macOS dotfiles and bootstrap script for setting up a shell/dev environment.

## What This Repo Does

`install.sh` symlinks dotfiles from this repo into your home directory and then applies Homebrew bundle changes from `.Brewfile`.

Linked files/configs:

- `.aliases`
- `.bash_profile`
- `.bashrc`
- `.Brewfile`
- `.gitconfig`
- `.hushlogin`
- `.inputrc`
- `.vimrc`
- `.zshrc`
- `.config/starship.toml`
- `.config/lsd/config.yaml`
- `.config/lsd/colors.yaml`
- `.config/zed/settings.json`

It also creates Vim state directories:

- `~/.vim/backup`
- `~/.vim/swap`
- `~/.vim/view`
- `~/.vim/undo`

## Prerequisites

- macOS
- Homebrew installed

## Install

From the repo root:

```bash
./install.sh
```

## Notes

- Symlinks are created with `ln -sf`, so existing files at those paths will be replaced.
- The script runs:
  - `brew bundle install --global`
  - `brew bundle cleanup --global --force`
- `cleanup --force` removes packages not declared in your global Brewfile. Review `.Brewfile` before running if this machine already has custom packages installed.
