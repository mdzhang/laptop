#!/bin/bash
# script to bootstrap setting up a debian/ubuntu machine with ansible

# Manual steps
# - Grab Firefox KeePassXC-Connector extension
#   - Setup Firefox HTTP proxy: https://nordvpn.com/tutorials/proxy-setup/firefox/
# - Login to Dropbox, Gmail, Firefox, Github
# - Generate SSH key, add to Github
# - Git clone dotfiles, do recursive install
# - Run preinstall script
# - Pick which directories to GNU stow and stow them
# - Run postinstall script
# - Register gpg key: https://gist.github.com/ankurk91/c4f0e23d76ef868b139f3c28bde057fc
# - Switch to dark theme
# - Drag menubar to lefthand side
# - Konsole Breeze theme
# - Key repeat rate to 50 repeat/s, 300ms delay
# - Show date in menubar
# - Show hidden files in file explorer

sudo apt-get -y install \
  python-setuptools python3-setuptools python3 python3-wheel python3-dev python3-pip build-essential libpq-dev libxml2-dev libxslt1-dev libldap2-dev libsasl2-dev libffi-dev libssl-dev git make

pip3 install ansible --user

installdir="/tmp/laptop-$RANDOM"
mkdir $installdir

git clone https://github.com/mdzhang/laptop.git $installdir
if [ ! -d $installdir ]; then
    echo "failed to find laptop."
    echo "git cloned failed"
    exit 1
else
    cd $installdir
    export PATH=$PATH:~/.local/bin
    make run
fi

echo "cleaning up..."

rm -Rfv /tmp/$installdir

echo "done."

exit 0
