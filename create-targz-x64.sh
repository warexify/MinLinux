#!/bin/bash

# create our environment
set -e
BUILDIR=$(pwd)
TMPDIR=$(mktemp -d)
ARCH="amd64"
DIST="testing"
cd $TMPDIR

# install script dependencies
sudo apt update
sudo apt -y install curl gnupg cdebootstrap

# download and install patched libdebian-installer, see https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=904699
wget https://github.com/WhitewaterFoundry/WLinux/raw/master/libdebian-installer4_0.116_amd64.deb
sudo dpkg -i libdebian-installer4_0.116_amd64.deb

# bootstrap image
sudo cdebootstrap -a $ARCH --include=sudo,locales,git,ssh,gnupg,apt-transport-https,wget,ca-certificates,man,less,curl $DIST $DIST http://deb.debian.org/debian

# remove patched cdebootstrap and libdebian-installer4
sudo apt --fix-broken install -y
sudo apt autoremove -y

# download and install wlinux-base and wlinux-setup
# wlinx-base needs to be installed with:
# Dpkg::Options::="--force-overwrite"
# to ensure that it installs correctly since we over-write base-files' os-release

# Hold base-files to prevent version changes affecting our wlinux-base situation
sudo chroot $DIST /bin/bash -c "apt-mark hold base-files"

# configure initial language settings
sudo chroot $DIST /bin/bash -c "echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen && locale-gen"
sudo chroot $DIST /bin/bash -c "update-locale LANGUAGE=en_US.UTF-8 LC_ALL=C"

# remove unnecessary packages in initial image
sudo chroot $DIST apt remove systemd dmidecode -y --allow-remove-essential

# clean up any orphaned apt dependencies
sudo chroot $DIST apt-get autoremove -y

# clean apt cache
sudo chroot $DIST apt-get clean

# create tar
cd $DIST
sudo tar --ignore-failed-read -czvf $TMPDIR/install.tar.gz *

# move into place in build folder
cd $TMPDIR
cp install.tar.gz $BUILDIR/x64/
cd $BUILDIR
