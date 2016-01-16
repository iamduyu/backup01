#! /bin/bash

# move to dw directory and open an explorer
_dw()
{
    pushd '/c/Users/dodo/AppData/Roaming/Adobe/Dreamweaver CC 2015/en_US/'
    start .
    popd
}

_dw_enter()
{
    pushd '/c/Users/dodo/AppData/Roaming/Adobe/Dreamweaver CC 2015/en_US/'
}

# let java tools say english
alias javac='javac -J-Duser.language=en'
alias jdb='jdb -J-Duser.language=en'


# build debug go code
alias god='go build -gcflags "-N -l"'
export GOROOT=/c/tools/go
export GOPATH=/c/Users/dodo/viproj
export PATH=$PATH:$GOPATH/bin

# cd to my workspace
cd ~/viproj
