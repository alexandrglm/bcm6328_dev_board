#!/bin/
uci -q delete fstab.extroot
uci -q delete fstab.rwm
uci commit fstab
reboot
