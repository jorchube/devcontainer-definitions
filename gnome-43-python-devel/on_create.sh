#!/usr/bin/env bash

set -e

dnf -y install vim make python3-gobject libadwaita-devel gtk4-devel gobject-introspection-devel
pip install pygobject gengir
gengir --gtk 4

echo "export PS1='\e[01;34m\][\w]\e[00;01m\]$\e[00m\] '" >> ~/.bashrc
