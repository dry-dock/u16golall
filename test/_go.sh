#!/bin/bash

source $HOME/.bashrc

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

