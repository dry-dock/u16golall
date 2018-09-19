#!/bin/bash

#set the source path of gvm. $HOME points to '/root'
[[ -s "$HOME/.gvm/scripts/gvm" ]] && source $HOME/.gvm/scripts/gvm
export CGO_ENABLED=0

echo "============= Installing Go 1.4 ===================="
gvm install go1.4

echo "=========== Using go 1.4 ==================="
source /root/.gvm/scripts/gvm
gvm use go1.4
go install -a std
go get -u github.com/tools/godep

declare -a versions=( '1.9.7' '1.11' )
for version in "${versions[@]}"
  do
    echo "================= Install Go $version==================="
    export GOROOT_BOOTSTRAP=$GOROOT
    gvm install go$version
    source /root/.gvm/scripts/gvm
    gvm use go$version
    go install -a std
    go get -u github.com/tools/godep
done
