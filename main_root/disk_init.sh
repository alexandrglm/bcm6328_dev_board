#!/bin/sh
umount /dev/sda1
rm -rf /mnt/usb
mkdir -p /mnt/usb
mount /dev/sda1 /mnt/usb
