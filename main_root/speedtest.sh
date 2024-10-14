#!/bin/sh
FILE_URL="https://downloads.openwrt.org/releases/23.05.5/targets/bmips/bcm6328/openwrt-23.05.5-bmips-bcm6328-comtrend_ar-5387un-squashfs-sysupgrade.bin"
FILE_NAME="openwrt-23.05.5-bmips-bcm6328-comtrend_ar-5387un-squashfs-sysupgrade.bin"
FILE_PATH="/mnt/usb/${FILE_NAME}"
SERVER_IP="iperf3.moji.fr"
start_time=$(date +%s)
wget -O "${FILE_PATH}" "${FILE_URL}"
end_time=$(date +%s)
download_time=$((end_time - start_time))
file_size=$(stat -c%s "${FILE_PATH}")
download_speed=$(echo "scale=2; ($file_size * 8) / ($download_time * 1000000)" | bc)
iperf3 -c "${SERVER_IP}" -t "${download_time}" -f m > /tmp/iperf3.log
write_speed=$(grep "sender" /tmp/iperf3.log | awk '{print $6}')
rm "${FILE_PATH}"

echo "Velocidad de descarga: ${download_speed} Mbps"
echo "Velocidad de escritura: ${write_speed} Mbps"
