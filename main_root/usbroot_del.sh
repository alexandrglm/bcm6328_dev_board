#!/bin/
uci -q delete fstab.extroot
uci -q delete fstab.rwm
uci commit fstab
echo "Reinici(A)r? (Pulse A)"
read -r -n 1 -s key
if [ "$key" = "A" ]; then
  echo "reboot..."
  reboot
else
  echo "end"
fi
