#!/bin/bash
# script to bootstrap setting up a debian/ubuntu machine with ansible

# Manual steps
# - Grab Firefox KeePassXC-Connector extension
# - Login to Dropbox, Gmail, Firefox, Github
# - Generate SSH key, add to Github
# - Git clone dotfiles, do recursive install
# - Run preinstall script
# - Pick which directories to GNU stow and stow them
# - Run postinstall script

sudo apt-get -y install \
  python-setuptools python3 python3-dev build-essential libpq-dev libxml2-dev libxslt1-dev libldap2-dev libsasl2-dev libffi-dev libssl-dev

sudo easy_install pip
sudo easy_install ansible

installdir="/tmp/laptop-$RANDOM"
mkdir $installdir

git clone https://github.com/mdzhang/laptop.git $installdir
if [ ! -d $installdir ]; then
    echo "failed to find laptop."
    echo "git cloned failed"
    exit 1
else
    cd $installdir
    sudo ansible-playbook -i inventory playbook.yml --verbose
fi

echo "cleaning up..."

rm -Rfv /tmp/$installdir

echo "and we are done! Enjoy!"

exit 0
