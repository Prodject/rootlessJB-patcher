#!/bin/bash

#Usage: ./patch.sh <.deb file to patch>
#Patched version will be saved to "patched" folder

[[ ! -f patch.sh ]] && echo "Please cd into the root directory of the repository!" && exit 0

DEB="$1"
DEST="$PWD/patched"

echo "Debian package is $DEB"
echo "Destination for patched version is $DEST"

rm -r patched

./lib/patcher "$DEB" "$DEST"
find patched -iname *.dylib -exec ./lib/ldid2 -S {} \;

echo
echo 'Now copy the patched version to your iOS device by running the following command (you need to fill in the actual IP address of your device):'
echo 'scp -r patched/Library/* root@<YOUR iOS IP ADDRESS>:/var/containers/Bundle/tweaksupport/Library/'
echo "(Please verify you are using a version of rootlessJB with a working copy of scp!)"
echo
echo "Now SSH into your iOS device and run the following command:"
echo 'chown mobile:staff /var/containers/Bundle/tweaksupport/Library/MobileSubstrate/DynamicLibraries/*.dylib && \'
echo 'chmod 777 /var/containers/Bundle/tweaksupport/Library/MobileSubstrate/DynamicLibraries/*.dylib'
echo
echo "Then reboot and rejailbreak your device!"
