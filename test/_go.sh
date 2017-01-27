#!/bin/bash

#set the source path of gvm. $HOME points to '/root'
[[ -s "$HOME/.gvm/scripts/gvm" ]] && source $HOME/.gvm/scripts/gvm

echo "######### Testing Go 1.1 ###################"
gvm use 1.1
go version
echo "######### Go 1.1 Test Successful ###################\n"


echo "######### Testing Go 1.2 ###################"
gvm use 1.2
go version
echo "######### Go 1.2 Test Successful ###################\n"

echo "######### Testing Go 1.3 ###################"
gvm use 1.3
go version
echo "######### Go 1.3 Test Successful ###################\n"

echo "######### Testing Go 1.4 ###################"
gvm use 1.4
go version
echo "######### Go 1.4 Test Successful ###################\n"

echo "######### Testing Go 1.5 ###################"
gvm use 1.5
go version
echo "######### Go 1.5 Test Successful ###################\n"

echo "######### Testing Go 1.6 ###################"
gvm use 1.6
go version
echo "######### Go 1.6 Test Successful ###################\n"

echo "######### Testing Go 1.7 ###################"
gvm use 1.7
go version
echo "######### Go 1.7 Test Successful ###################\n"

