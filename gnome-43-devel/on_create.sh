#!/usr/bin/env bash

set -e

dnf -y install python3-gobject libadwaita-devel gtk4-devel gobject-introspection-devel
pip install pygobject gengir
gengir --gtk 4
git config --global --add safe.directory /workspaces/*
