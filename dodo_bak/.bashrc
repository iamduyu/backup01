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

_win32like()
{
    pushd '/c/vim-win32like'
    start .
    popd
}

_cd_where()
{
    pushd "$(dirname "$(where $1)")"
}

alias cdw=_cd_where

# let java tools say english
alias javac='javac -J-Duser.language=en -encoding UTF-8'
alias jdb='jdb -J-Duser.language=en'
alias javah='javah -J-Duser.language=en'
alias java='java -Duser.language=en -Dfile.encoding=UTF-8'
alias jar='jar -J-Duser.language=en'
alias javadoc='javadoc -J-Duser.language=en'

alias catalina='/c/apache-tomcat-9.0.0.M3/bin/catalina.sh'


# build debug go code
alias god='go build -gcflags "-N -l"'
export GOROOT=/c/tools/go
export GOPATH=/c/Users/dodo/viproj/projgo/
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/python
export PATH=$PATH:/c/xampp/php
export PATH=$PATH:/e/Program\ Files/Microsoft\ Visual\ Studio\ 14.0/VC/bin
export PATH=$PATH:/e/Program\ Files/android/android-sdk/build-tools/23.0.1
export PATH=$PATH:/e/Program\ Files/android/android-sdk/platform-tools

export INCLUDE='E:\Program Files\Microsoft Visual Studio 14.0\VC\INCLUDE;'
export INCLUDE=$INCLUDE'C:\Program Files\Microsoft Visual Studio 14.0\VC\ATLMFC\INCLUDE;'
export INCLUDE=$INCLUDE'C:\Program Files\Windows Kits\10\include\10.0.10240.0\ucrt;'
export INCLUDE=$INCLUDE'C:\Program Files\Windows Kits\NETFXSDK\\4.6.1\include\um;'
export INCLUDE=$INCLUDE'C:\Program Files\Windows Kits\8.1\include\shared;'
export INCLUDE=$INCLUDE'C:\Program Files\Windows Kits\8.1\include\um;'
export INCLUDE=$INCLUDE'C:\Program Files\Windows Kits\8.1\include\winrt;'

export LIBPATH='C:\Windows\Microsoft.NET\Framework\v4.0.30319;'
export LIBPATH=$LIBPATH'E:\Program Files\Microsoft Visual Studio 14.0\VC\LIB;'
export LIBPATH=$LIBPATH'E:\Program Files\Microsoft Visual Studio 14.0\VC\ATLMFC\LIB;'
export LIBPATH=$LIBPATH'C:\Program Files\Windows Kits\8.1\References\CommonConfiguration\Neutral;'

export LIB='E:\Program Files\Microsoft Visual Studio 14.0\VC\LIB;E:\Program Files\Microsoft Visual Studio 14.0\VC\ATLMFC\LIB;'
export LIB=$LIB'C:\Program Files\Windows Kits\10\lib\10.0.10240.0\ucrt\x86;'
export LIB=$LIB'C:\Program Files\Windows Kits\NETFXSDK\4.6.1\lib\um\x86;C:\Program Files\Windows Kits\8.1\lib\winv6.3\um\x86;'
export LIB=$LIB'\Microsoft.VCLibs\14.0\References\CommonConfiguration\neutral;'
# cd to my workspace
cd ~/viproj

# go ssh
function ssh2()
{
    ssh root@ubt15
}


export JAVA_HOME="/c/Program Files/Java/jdk1.8.0_66"

_tclog()
{
 cd "/e/Program Files/spring-tool-suite-3.7.2.RELEASE-e4.5.1-win32/sts-bundle/pivotal-tc-server-developer-3.1.2.RELEASE/base-instance/logs"
}
