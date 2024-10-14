#!/bin/sh
DIR="$(uci -q get fstab.extroot.target)"
dd if=/dev/zero of=${DIR}/swap bs=1M count=100
mkswap ${DIR}/swap
uci -q delete fstab.swap
uci set fstab.swap="swap"
uci set fstab.swap.device="${DIR}/swap"
uci commit fstab
service fstab boot
cat /proc/swaps
