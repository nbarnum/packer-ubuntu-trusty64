#!/bin/bash
#
# Setup the the box. This runs as root

apt-get -y update

DEBIAN_FRONTEND=noninteractive

apt-get -y install curl wget vim