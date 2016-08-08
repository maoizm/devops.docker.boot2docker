#!/bin/sh
#
# run this inside boot2docker VM only once during setup of boot2docker VM. 
# boot2docker VM keeps unchanged between reboots the contents of /var/lib/boot2docker
#
# see https://github.com/boot2docker/boot2docker/blob/master/doc/FAQ.md#local-customisation-with-persistent-partition
#   and https://github.com/docker/machine/issues/1814#issuecomment-210090278
#   and https://github.com/boot2docker/boot2docker/blob/master/README.md#virtualbox-guest-additions
#
#
sudo echo -e "mkdir -p /c/0projects ; mount -t vboxsf -o uid=1000,gid=50 hostdev /c/0projects" >> /var/lib/boot2docker/bootlocal.sh
