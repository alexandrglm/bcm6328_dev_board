# Broadcom BCM6328 Development Board

This README provides information about a development board based on the Broadcom BCM6328 chipset.

## Hardware Specifications

## CPU
* **IC:** Broadcom BCM6328
* **Type:** MIPS32 CPU
* **MIPS:** BMIPS4350 @ 320 MHz
* **BUS:** 160MHz
  
## RAM
* **IC:** ProMOS V59C1512164QDJ25
* **Type:** SDRAM DDR2-800
* **DDR:** 320MHz
* **Total Memory:** 64MB

## Flash
* **IC:** MX25L128
* **Capacity:** 16MB

## CONNECTIVITY

### Internal Switch
* Integrated BRCM6328 Switch including:

### WLAN
* **IC:** Broadcom BCM43225 Vendor: 14e4, ID: a8d8
* **Type:** WiFi N (802.11n draft 2.0)/b/g/a
* **Features:** WDS, WMM (QoS), WPS
* **Security:** WPA3/WPA2 
* **Antenna:** MIMO 2x2, 2x SMA connectors

### LAN
* **IC:** Integrated BRCM6328 Switch
* **Ports:** 4x Ethernet 100Mbps
* **Standards:** IEEE 802.3, IEEE 802.3u 10/100 BaseT Auto-sense MDI/MDX

### USB
* 1x USB 2.0 OHCI/EHCI (Up to 480 Mbps)


### 4G-LTE FDD Modem
* **IC:** Qualcomm 8916 Modem chipset (Up to 150Mbps)
* **Modes:**
    * RNDIS
    * MBIM
    * QMI
    * ECM-MCM
    * Ethernet over USB
    * USB-IP
    * WLAN AP
* **4G Bands:** B1 (2100MHz), B3 (1800MHz), B5 (850MHz)
* **3G Bands:** B1 (2100MHz)
* **Antennas:** Integrated + IPEX-1 U.FL to SMA connector


### Modem
* 1x RJ11 2-wire line port


### Serial - UART
* 4 pins:
    1. GND
    2. Tx (pulled high, drops 2-1V when sending data)
    3. Rx (pulled high)
    4. Vcc (3.3V)

## BOARD

### POWER INPUT: 12V / 5V/3,3V on board.
### LED
* 7 led:
    1. 2x RGB
    2. 5x GREEN

## DEV

### Bootloader
* CFE version 1.0.37-110.11-2 for BCM96328 (32bit,SP,BE)
* Boot Address: 0xb8000000

### Software
* **Linux Kernel:** 5.15.167 fully compatible
* **Scripting:**
      * Pyhton v3.12
