#!/bin/bash

# check args
if [  $# != 0 ]
then
    exit 1
fi

echo "Building sysInfo ..."
make -j || exit $?

echo "Removing old version ..."
sudo make uninstall || exit ?

sudo make install || exit $?
echo "Installed succesfully"
