#!/bin/sh
URL="http://speedtest.tele2.net/512MB.zip"

FILE="/mnt/usb/1GB.zip"

TEST_FILE="/mnt/usb/test.img"

TEST_FILE_SIZE_MB=1024

TEST_FILE_SIZE_BYTES=$((TEST_FILE_SIZE_MB * 1024 * 1024))

start_time=$(date +%s.%N)
wget -O "$FILE" "$URL" &
wget_pid=$!

dd if=/dev/zero of="$TEST_FILE" bs=1M count="$TEST_FILE_SIZE_MB" oflag=direct &
dd_pid=$!

wait "$wget_pid"
end_time_wget=$(date +%s.%N)

wait "$dd_pid"
end_time_dd=$(date +%s.%N)

download_time=$(echo "$end_time_wget - $start_time" | bc)

write_time=$(echo "$end_time_dd - $start_time" | bc)

file_size=$(stat -c%s "$FILE")

download_speed=$(echo "scale=2; $file_size / $download_time / 1024 / 1024" | bc)

write_speed=$(echo "scale=2; $TEST_FILE_SIZE_BYTES / $write_time / 1024 / 1024" | bc)

echo "Tasa de descarga: $download_speed MB/s"
echo "Tasa de escritura: $write_speed MB/s"

rm "$FILE" "$TEST_FILE"
