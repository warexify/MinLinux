#!/bin/bash

# create our environment
set -e
BUILDIR=$(pwd)
TMPDIR=$(mktemp -d)
ARCH="arm64"
DIST="stable"
cd $TMPDIR

# install script dependencies
sudo apt-get -y -q update
sudo apt-get -y -q install curl gnupg cdebootstrap qemu-user-static

# the workaround below in the x86 version does not work when building the arm64 version because of a qemu dependency
# so instead we are building as stable and then upgrading to testing

# bootstrap image
sudo cdebootstrap -a $ARCH --foreign --include=sudo,locales,git,ssh,gnupg,apt-transport-https,wget,ca-certificates,man,less,curl,bash-completion,vim $DIST $DIST http://deb.debian.org/debian

# clean apt cache
sudo chroot $DIST apt clean

# download and install wlinux-base and wlinux-setup
sudo curl "https://salsa.debian.org/rhaist-guest/WSL/raw/master/linux_files/profile" -so "${TMPDIR}/${DIST}/etc/profile"
sudo cp $BUILDIR/linux_files/setup $TMPDIR/$DIST/etc/setup
sudo chroot $DIST /bin/bash -c "bash /etc/setup --silent"

# configure initial language settings
sudo chroot $DIST /bin/bash -c "echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen && locale-gen"
sudo chroot $DIST /bin/bash -c "update-locale LANGUAGE=en_US.UTF-8 LC_ALL=C"

# remove unnecessary packages in initial image
sudo chroot $DIST apt-get -y -q remove systemd dmidecode --allow-remove-essential

# clean up any orphaned apt dependencies
sudo chroot $DIST apt-get -y -q autoremove

# clean apt cache
sudo chroot $DIST apt-get -y -q clean

# create tar
cd $DIST
sudo tar --ignore-failed-read -czvf $TMPDIR/install.tar.gz *

# move into place in build folder
cd $TMPDIR
cp install.tar.gz $BUILDIR/ARM64/
cd $BUILDIR
