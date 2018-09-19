#!/bin/bash

#set the source path of gvm. $HOME points to '/root'
[[ -s "$HOME/.gvm/scripts/gvm" ]] && source $HOME/.gvm/scripts/gvm
export CGO_ENABLED=0

export GVM_INSTALL=1.4
echo "============= Installing Go $GVM_INSTALL ===================="
gvm install go$GVM_INSTALL

echo "=========== Using go  $GVM_INSTALL ==================="
source /root/.gvm/scripts/gvm
gvm use go$GVM_INSTALL
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
