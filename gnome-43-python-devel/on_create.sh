#!/usr/bin/env bash

set -e

dnf -y install vim make python3-gobject libadwaita-devel gtk4-devel gobject-introspection-devel
pip install pygobject gengir pipenv
gengir --gtk 4

echo ". /usr/share/git-core/contrib/completion/git-prompt.sh" >> ~/.bashrc
echo -e "export PS1='\e[01;34m\]\w\e[01;33m\]\$(__git_ps1)\n\e[00;01m\]$\e[00m\] '" >> ~/.bashrc
