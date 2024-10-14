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
* **Size:** 64MB

## Flash
* **IC1:** MX25L128
* **Size:** 16384KB with 4096 sectors
* 
* **IC2:**  NAND FLASH
* **Size:** 32 Gb
  
* BUS SPEED: **1,5Mbps**

## CONNECTIVITY

### Internal Switch
* **SWITCHs SPEED:** 480Mbps

### WLAN
* **IC:** Broadcom BCM43225 Vendor: 14e4, ID: a8d8
* **Type:** WiFi N (802.11n draft 2.0)/b/g/a (300 Mbps)
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

### Mini PCIe
IC: Broadcom BCM43225
PINOUT:

| miniPCIe SIGNAL| miniPCIe PIN | BCM43225 Signal | BCM43225 Pin | Addr |
|---|---|---|---|---|
| PCIE_TDN       | 87          | RD_NR2         | 29           | Input    |
| PCIE_TDP       | 86          | RD_PR2         | 33           | Input    |
| PCIE_RDP       | 81          | TD_PR2         | 25           | Output   |
| PCIE_RDN       | 80          | TD_NR2         | 23           | Output   |
| PCIE_CLKN      | 84          | CLK_NR2        | 11           | Input    |
| PCIE_CLKP      | 83          | CLK_PR1        | 13           | Input    |
| PCIE_RST       | 76          | RST (VIA)      | 22           | Input    |
| PCIE_CLKREQ    | 75          | CLKREQ (VIA)   | 7            | Output   |

**GND:** 4, 9, 15, 18, 21, 26, 27, 29, 34, 35, 37, 40, 43, 50
**3V3:** 2, 24, 39, 41, 52


### Modem
* 1x RJ11 2-wire line port
Old xDSL ITU-T G.992.5, ITU-T G.992.3, ITU-T G.992.1, ANSI T1.413 Issue 2
Port may be used as "sensor", or data transfer, line.


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

### First Kernel log
[    0.000000] Linux version 5.15.167 (builder@buildhost) (mips-lede-linux-musl-gcc (LEDE GCC 12.3.0) 12.3.0, GNU ld (GNU Binutils) 2.40.0) #0 SMP Mon Sep 23 12:34:46 2024
[    0.000000] CPU0 revision is: 0002a075 (Broadcom BMIPS4350)
[    0.000000] MIPS: machine is BCM6328 Dev Board
[    0.000000] 64MB of RAM installed
[    0.000000] Primary instruction cache 32kB, VIPT, 4-way, linesize 16 bytes.
[    0.000000] Primary data cache 32kB, 2-way, VIPT, cache aliases, linesize 16 bytes

### Software
* **Linux Kernel:** 5.15.167 fully compatible
* **Scripting:**
      * Python 3.11.7-1
      * Perl 5.28.1-9
