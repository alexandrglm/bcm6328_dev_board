#!/bin/sh
umount /dev/sda1 
mkfs.ext4 /dev/sda1
sh ./disk_init.sh
