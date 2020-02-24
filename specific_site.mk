#####################################################################################################################
# Hier werden weitere Target- und Device-spezifische Packages eingebunden.
#####################################################################################################################


# Basic support for USB stack
USB_PACKAGES_BASIC := \
	kmod-usb-core \
	kmod-usb2 \
	usbutils

# Storage support for USB devices
USB_PACKAGES_STORAGE := \
	block-mount \
	blkid \
	kmod-fs-ext4 \
	kmod-fs-vfat \
	kmod-usb-storage \
	kmod-usb-storage-extras \
	kmod-nls-cp1250 \
	kmod-nls-cp1251 \
	kmod-nls-cp437 \
	kmod-nls-cp775 \
	kmod-nls-cp850 \
	kmod-nls-cp852 \
	kmod-nls-cp866 \
	kmod-nls-iso8859-1 \
	kmod-nls-iso8859-13 \
	kmod-nls-iso8859-15 \
	kmod-nls-iso8859-2 \
	kmod-nls-koi8r \
	kmod-nls-utf8 \
	swap-utils \
	usb-modeswitch

# Network support for PCI devices
PCI_PACKAGES_NET := \
	kmod-3c59x \
	kmod-e100 \
	kmod-e1000 \
	kmod-e1000e \
	kmod-forcedeth \
	kmod-igb \
	kmod-natsemi \
	kmod-ne2k-pci \
	kmod-pcnet32 \
	kmod-r8169 \
	kmod-sis900 \
	kmod-sky2 \
	kmod-tg3 \
	kmod-tulip \
	kmod-via-rhine \
	kmod-via-velocity \
	kmod-8139too \
	kmod-atl2

# Network support for USB devices
USB_PACKAGES_NET := \
	kmod-ath9k-htc  \
	kmod-ath9k-common \
	kmod-ath \
	kmod-brcmfmac \
	kmod-carl9170 \
	kmod-mii \
	kmod-nls-base \
	kmod-rt73-usb \
	kmod-rtl8192cu \
	kmod-rtl8187 \
	kmod-usb-net \
	kmod-usb-net-asix \
	kmod-usb-net-asix-ax88179 \
	kmod-usb-net-cdc-eem \
	kmod-usb-net-cdc-ether \
	kmod-usb-net-cdc-mbim \
	kmod-usb-net-cdc-ncm \
	kmod-usb-net-cdc-subset \
	kmod-usb-net-dm9601-ether \
	kmod-usb-net-hso \
	kmod-usb-net-huawei-cdc-ncm \
	kmod-usb-net-ipheth \
	kmod-usb-net-kalmia \
	kmod-usb-net-kaweth \
	kmod-usb-net-mcs7830 \
	kmod-usb-net-pegasus \
	kmod-usb-net-qmi-wwan \
	kmod-usb-net-rndis \
	kmod-usb-net-rtl8152 \
	kmod-usb-net-sierrawireless \
	kmod-usb-net-smsc95xx \
	kmod-rt2800-usb \
	kmod-rt2500-usb

# USB serial packages
USB_PACKAGES_SERIAL := \
	kmod-usb-serial \
	kmod-usb-serial-option \
	kmod-usb-serial-ftdi \
	kmod-usb-serial-pl2303

# USB Keyboard packages
USB_PACKAGES_KEYBOARD := \
	kmod-usb-hid \
	kmod-hid-generic
#	kmod-ledtrig-usbdev

# x86 spezifisch
PCI_PACKAGES_X86 :=\
	pciutils \
	kmod-usb-ohci-pci \
	kmod-bnx2

# Debug packages
DEBUG_PACKAGES := \
	tcpdump \
	libnl \
	gdb \
	valgrind \
	iftop \
	binutils \
	strace \
	screen \
	socat \
	kmod-cfg80211

# Util packages
UTIL_PACKAGES := \
	nano \
	joe \
	iperf3 \
	tcpdump

# Main combination
USB_PACKAGES_COMBO := \
	$(USB_PACKAGES_BASIC) \
	$(USB_PACKAGES_NET) \
	$(USB_PACKAGES_STORAGE) \
	$(USB_PACKAGES_KEYBOARD) \
	$(USB_PACKAGES_SERIAL)

# General Packages for all targets
GENERAL_PACKAGES := \
	$(UTIL_PACKAGES)

ifeq ($(GLUON_DEBUG),1)
GLUON_SITE_PACKAGES += \
	$(DEBUG_PACKAGES)
endif

#####################################################################################################################
# GLUON-Target specific settings:
#####################################################################################################################

GLUON_SITE_PACKAGES += zram-swap

# ar71xx-tiny
ifeq ($(GLUON_TARGET),ar71xx-tiny)
GLUON_SITE_PACKAGES += zram-swap
# Don't add aditional packages here. 
# The ar71xx-tiny images require all free Flash memory space.
endif

# ar71xx Generic
ifeq ($(GLUON_TARGET),ar71xx-generic)
GLUON_SITE_PACKAGES += \
	$(GENERAL_PACKAGES)
endif

# ar71xx NAND
ifeq ($(GLUON_TARGET),ar71xx-nand)
GLUON_SITE_PACKAGES += \
	$(GENERAL_PACKAGES)
endif

# ath79 Generic
ifeq ($(GLUON_TARGET),ath79-generic)
GLUON_SITE_PACKAGES += \
	$(GENERAL_PACKAGES)
endif

# x86-generic
ifeq ($(GLUON_TARGET),x86-generic)
# support the usb stack on x86 devices
# and add a few common USB NICs
GLUON_SITE_PACKAGES += \
	$(GENERAL_PACKAGES) \
	$(USB_PACKAGES_COMBO) \
	$(PCI_PACKAGES_NET) \
	$(PCI_PACKAGES_X86)
endif

# x86-64
ifeq ($(GLUON_TARGET),x86-64)
# support the usb stack on x86-64 devices
# and add a few common USB NICs
GLUON_SITE_PACKAGES +=  \
	$(GENERAL_PACKAGES) \
	$(USB_PACKAGES_COMBO) \
	$(PCI_PACKAGES_NET) \
	$(PCI_PACKAGES_X86)
endif

# x86-geode
# support the usb stack on x86-geode devices
# and add a few common USB NICs
ifeq ($(GLUON_TARGET),x86-geode)
GLUON_SITE_PACKAGES += \
	$(GENERAL_PACKAGES) \
	$(USB_PACKAGES_COMBO) \
	$(PCI_PACKAGES_NET) \
	$(PCI_PACKAGES_X86) \
	-kmod-e1000e
endif

# mpc85xx-p1020
ifeq ($(GLUON_TARGET),mpc85xx-p1020)
GLUON_SITE_PACKAGES += \
	$(GENERAL_PACKAGES)
endif

# mpc85xx-generic
ifeq ($(GLUON_TARGET),mpc85xx-generic)
GLUON_SITE_PACKAGES += \
	$(GENERAL_PACKAGES)
endif

# Raspberry Pi A/B/B+
ifeq ($(GLUON_TARGET),brcm2708-bcm2708)
GLUON_SITE_PACKAGES += \
	$(GENERAL_PACKAGES) \
	$(USB_PACKAGES_COMBO)
endif

# Raspberry Pi 2
ifeq ($(GLUON_TARGET),brcm2708-bcm2709)
GLUON_SITE_PACKAGES += \
	$(GENERAL_PACKAGES) \
	$(USB_PACKAGES_COMBO)
endif

# Raspberry Pi 3
ifeq ($(GLUON_TARGET),brcm2708-bcm2710)
GLUON_SITE_PACKAGES += \
	$(GENERAL_PACKAGES) \
	$(USB_PACKAGES_COMBO)
endif

# Banana Pi
ifeq ($(GLUON_TARGET),sunxi-cortexa7)
GLUON_SITE_PACKAGES += \
	$(GENERAL_PACKAGES) \
	$(USB_PACKAGES_COMBO)
endif

# ramips-mt7620
ifeq ($(GLUON_TARGET),ramips-mt7620)
GLUON_SITE_PACKAGES += \
	$(GENERAL_PACKAGES)
endif

# ramips-mt7621
ifeq ($(GLUON_TARGET),ramips-mt7621)
GLUON_SITE_PACKAGES += \
	$(GENERAL_PACKAGES)
endif

# ramips-mt76x8
ifeq ($(GLUON_TARGET),ramips-mt76x8)
GLUON_SITE_PACKAGES += \
	$(GENERAL_PACKAGES)
endif

#ramips-rt305x, no additional packages possible
ifeq ($(GLUON_TARGET),ramips-rt305x)
GLUON_SITE_PACKAGES +=
endif

#ipq40xx-generic 
ifeq ($(GLUON_TARGET),ipq40xx-generic)
GLUON_SITE_PACKAGES += \
	$(GENERAL_PACKAGES)
endif

#ipq806x-generic 
ifeq ($(GLUON_TARGET),ipq806x-generic)
GLUON_SITE_PACKAGES += \
	$(GENERAL_PACKAGES)
endif

#lantiq-xrx200 
ifeq ($(GLUON_TARGET),lantiq-xrx200)
GLUON_SITE_PACKAGES += \
	$(GENERAL_PACKAGES)
endif

#lantiq-xway 
ifeq ($(GLUON_TARGET),lantiq-xway)
GLUON_SITE_PACKAGES += \
	$(GENERAL_PACKAGES)
endif

#####################################################################################################################
# GLUON-Device specific settings:
#####################################################################################################################
