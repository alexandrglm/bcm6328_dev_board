# BCM6328 DEV BOARD:

### CPU:
IC:Broadcom BCM6328 
Type: MIPS32 CPU
MIPS: BMIPS4350 @ 320 MHz
BUS: 160MHz

### WLAN HARDWARE:
IC: BCM43225 (2x2)  vendor:14e4 id:a8d8
Type: 802.11b/g/n 2,4GHz
Antenna: 2x SMA

### LAN
IC: Integrated BRCM6328 Switch
4x Ethernet LAN 100Mbps ports


### RAM:
IC: ProMOS V59C1512164QDJ25
Type: SDRAM DDR2-800
DDR:320MHz
Total Memory: 67108864 bytes (64MB)
Capacity: 64MiB

### FLASH:
IC: MX25L128
Type: 
Capacity: 16MiB

### USB:
1x USB 2.0

### SERIAL - UART:
4 PINS
```
1. GND
2. Tx: Is pulled high (same as Vcc) and dropped 2-1 V when sending data
3. Rx: Is pulled high (same as Vcc)
4. Vcc: 3.3 V
```

### MODEM
1x RJ11 2 wires line port

### BOOTLOADER
CFE version 1.0.37-110.11-2 for BCM96328 (32bit,SP,BE)
Boot Address: 0xb8000000


