#!/usr/bin/env bash

set -e

dnf -y install git vim rust rust-src cargo
cargo install rustfmt

echo ". /usr/share/git-core/contrib/completion/git-prompt.sh" >> ~/.bashrc
echo "export PS1='[\[\e[34m\]\W\[\e[35m\]\$(__git_ps1 \" %s\")\[\e[00m\]]$\[\e[00m\] '" >> ~/.bashrc
