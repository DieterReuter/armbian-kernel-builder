#!/bin/bash -e

# Note: script has to be run as "root"
#       use: `sudo su`

# Install build dependencies
###echo "deb http://repo.aptly.info/ squeeze main" > /etc/apt/sources.list.d/aptly.list
apt-get update
#apt-get upgrade -y 
apt-get install -y git
###apt-get install -y aptly --force-yes

# Clone Armbian/lib repo
mkdir -p builder
cd builder
ln -s /vagrant/userpatches userpatches
git clone https://github.com/igorpecovnik/lib --depth 1
cp lib/compile.sh .

# Kernel config
#ls -al sources/linux-vanilla/v4.4.4/.config*
#ls -al sources/linux-vanilla/v4.4.5/.config*

# Compile kernel only
#time ./compile.sh BRANCH=next BOARD=armada KERNEL_ONLY=yes PROGRESS_DISPLAY=plain RELEASE=jessie
##EXTENDED_DEBOOTSTRAP=yes KERNEL_CONFIGURE=no BUILD_DESKTOP=no EXTERNAL=yes FORCE_CHECKOUT=yes

# Compile kernel and create image file
#time ./compile.sh BRANCH=next BOARD=armada KERNEL_ONLY=no BUILD_DESKTOP=no PROGRESS_DISPLAY=plain RELEASE=jessie
