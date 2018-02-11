#!/bin/bash
# script to bootstrap setting up a macos with ansible

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

echo "done."

exit 0
