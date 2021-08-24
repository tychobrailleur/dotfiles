#!/usr/bin/env bash

# Location of the checkout dotfiles project.
DOTFILES_PROJECT="~/dev/dotfiles/"

ln -sf ${DOTFILES_PROJECT}/bin ~/bin

# Let marelle install key dependencies.
[[ -x ~/bin/marelle ]] || echo "Marelle must be present..."; exit 1
cd ${DOTFILES_PROJECT}/marelle && marelle meet my-local-deps

for f in [.bashrc .bash_aliases .bash_completion .bash_profile]; do
    ln -sf ${DOTFILES_PROJECT}/$f ~/$f
done

[[ $OSTYPE == 'darwin'* ]] && ln -sf ${DOTFILES_PROJECT}/.bash_darwin ~/.bash_darwin
[[ $OSTYPE == 'linux-gnu'* ]] && ln -sf ${DOTFILES_PROJECT}/.bash_linux ~/.bash_linux
