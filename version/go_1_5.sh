#!/bin/bash

# Set the source path of gvm. $HOME points to '/root'
[[ -s "$HOME/.gvm/scripts/gvm" ]] && source $HOME/.gvm/scripts/gvm

# Install Go 1.5
echo "================= Install Go 1.5 ==================="
gvm use go1.4
export GOROOT_BOOTSTRAP=$GOROOT
gvm install go1.5 && gvm use go1.5 && go install -a -race std && go get -u github.com/tools/godep
