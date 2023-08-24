#!/bin/bash
# script to bootstrap setting up a macos with ansible

# NB: be sure to use system python3
/usr/bin/pip3 install ansible --user

export PATH="$HOME/Library/Python/3.9/bin:$PATH"

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
