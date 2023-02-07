#!/usr/bin/env bash

set -e

dnf -y install vim make python3-gobject libadwaita-devel gtk4-devel gobject-introspection-devel
pip install pygobject gengir
gengir --gtk 4

git config --global user.name "Name"
git config --global user.email "Email"

echo "export PS1='\e[01;34m\][\w]\e[00;01m\]$\e[00m\] '" >> ~/.bashrc
