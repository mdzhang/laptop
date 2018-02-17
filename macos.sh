#!/bin/bash
# script to bootstrap setting up a macos with ansible

pip install ansible

installdir="/tmp/laptop-$RANDOM"
mkdir $installdir

git clone https://github.com/mdzhang/laptop.git $installdir
if [ ! -d $installdir ]; then
    echo "failed to find laptop."
    echo "git clone failed"
    exit 1
else
    cd $installdir
    make run
fi

echo "cleaning up..."

rm -Rfv /tmp/$installdir

echo "done."

exit 0
