#!/bin/bash

echo -n "Installing apt-transport-https... "
apt-get install -y apt-transport-https &> /dev/null
echo "done."

sed -i 's$/pengwin-setup/$/pengwin-setup-dev/$g' /etc/apt/sources.list.d/whitewaterfoundry.list
sed -i 's$/pengwin-base/$/pengwin-base-dev/$g' /etc/apt/sources.list.d/whitewaterfoundry.list

echo -n "Importing packagecloud gpg key... "
# import the gpg key
curl -L "https://packagecloud.io/whitewaterfoundry/pengwin-setup-dev/gpgkey" 2> /dev/null | apt-key add - &>/dev/null
curl -L "https://packagecloud.io/whitewaterfoundry/pengwin-base-dev/gpgkey" 2> /dev/null | apt-key add - &>/dev/null
echo "done."

echo -n "Running apt-get update... "
# update apt on this system
apt-get update &> /dev/null
echo "done."

echo
echo "The repository is setup! You can now install packages."
