#!/usr/bin/bash

# Install `pyenv` to manage all Python versions
# REF: https://github.com/pyenv/pyenv
printf "Installing pyenv..."
git clone https://github.com/pyenv/pyenv.git ~/.pyenv

# Install the latest core Python release
printf "Installing latest stable release of Python..."
release="$(pyenv install --list | sed 's/ //g' | grep '^[0-9]' | grep -v '[a-z]' | tail -n 1)"
pyenv install $release
pyenv global $release
pyenv rehash

printf "Done!"
