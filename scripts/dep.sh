#!/bin/bash
#
# Setup the the box. This runs as root
DEV_MODE=0
DEBIAN_FRONTEND=noninteractive

apt-get -y update >/dev/null
apt-get -y install curl wget vim htop git

if [[ "$DEV_MODE" -eq "1" ]];then
echo install zsh
    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
else
    echo skipping installing oh-my-zsh...
fi