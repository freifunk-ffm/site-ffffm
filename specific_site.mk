#####################################################################################################################
# Hier werden weitere Target- und Device-spezifische Packages eingebunden.
#####################################################################################################################


# basic support for USB stack
USB_PACKAGES_BASIC := \
	kmod-usb-core \
	kmod-usb2 \
	usbutils

# storage support for USB devices
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

# network support for PCI devices
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

# network support for USB devices
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
USB_SERIAL_PACKAGES := \
	kmod-usb-serial \
	kmod-usb-serial-option \
	kmod-usb-serial-ftdi \
	kmod-usb-serial-pl2303

# USB Keyboard packages
USB_KEYBOARD_PACKAGES := \
	kmod-usb-hid \
	kmod-hid-generic
#	kmod-ledtrig-usbdev

# x86 spezifisch
PCI_X86_PACKAGES :=\
	kmod-usb-ohci-pci

# util packages
UTIL_PACKAGES := \
	nano \
	tcpdump \
	iperf \
	iperf3 \
	socat \
	libnl \
	gdb \
	valgrind \
	screen \
	iftop \
	tcpdump \
	binutils \
	strace

# main combination 
MAIN_COMBO_PACKAGES := \
	$(USB_PACKAGES_BASIC) \
	$(USB_PACKAGES_STORAGE) \
	$(USB_PACKAGES_NET) \
	$(UTIL_PACKAGES)

#####################################################################################################################
# GLUON-Target specific settings:
#####################################################################################################################

# x86-generic
ifeq ($(GLUON_TARGET),x86-generic)
# support the usb stack on x86 devices
# and add a few common USB NICs
GLUON_SITE_PACKAGES += \
	$(MAIN_COMBO_PACKAGES) \
	$(USB_KEYBOARD_PACKAGES) \
	$(USB_SERIAL_PACKAGES) \
	$(PCI_PACKAGES_NET) \
	$(PCI_X86_PACKAGES)
endif

# x86-64
ifeq ($(GLUON_TARGET),x86-64)
# support the usb stack on x86-64 devices
# and add a few common USB NICs
GLUON_SITE_PACKAGES += \
	$(MAIN_COMBO_PACKAGES) \
	$(USB_KEYBOARD_PACKAGES) \
	$(USB_SERIAL_PACKAGES) \
	$(PCI_PACKAGES_NET) \
	$(PCI_X86_PACKAGES)
endif

# Raspberry Pi A/B/B+
ifeq ($(GLUON_TARGET),brcm2708-bcm2708)
GLUON_SITE_PACKAGES += \
	$(MAIN_COMBO_PACKAGES) \
	$(USB_KEYBOARD_PACKAGES) \
	$(USB_SERIAL_PACKAGES)
endif

# Raspberry Pi 2
ifeq ($(GLUON_TARGET),brcm2708-bcm2709)
GLUON_SITE_PACKAGES += \
	$(MAIN_COMBO_PACKAGES) \
	$(USB_KEYBOARD_PACKAGES) \
	$(USB_SERIAL_PACKAGES)
endif

# Banana Pi
ifeq ($(GLUON_TARGET),sunxi)
GLUON_SITE_PACKAGES += \
	$(MAIN_COMBO_PACKAGES) \
	$(USB_KEYBOARD_PACKAGES) \
	$(USB_SERIAL_PACKAGES)
endif

# Ubiquiti EdgeRouter X (SFP)
ifeq ($(GLUON_TARGET),ramips-mt7621)
GLUON_SITE_PACKAGES += \
	$(MAIN_COMBO_PACKAGES)
endif

#####################################################################################################################
# GLUON-Device specific settings:
#####################################################################################################################

# ar71xx-generic
GLUON_ARCHERC7_SITE_PACKAGES := $(MAIN_COMBO_PACKAGES)
GLUON_DIR505A1_SITE_PACKAGES := $(MAIN_COMBO_PACKAGES)
GLUON_GLINET_SITE_PACKAGES := $(MAIN_COMBO_PACKAGES)
GLUON_TLWR842_SITE_PACKAGES := $(MAIN_COMBO_PACKAGES)
GLUON_TLWR1043_SITE_PACKAGES := $(MAIN_COMBO_PACKAGES)
GLUON_TLWR2543_SITE_PACKAGES := $(MAIN_COMBO_PACKAGES)
GLUON_TLWDR4300_SITE_PACKAGES := $(MAIN_COMBO_PACKAGES)
GLUON_WNDR3700_SITE_PACKAGES := $(MAIN_COMBO_PACKAGES)
GLUON_WRT160NL_SITE_PACKAGES := $(MAIN_COMBO_PACKAGES)
GLUON_WZRHPAG300H_SITE_PACKAGES := $(MAIN_COMBO_PACKAGES)
GLUON_WZRHPG450H_SITE_PACKAGES := $(MAIN_COMBO_PACKAGES)
# GLUON_DIR825B1_SITE_PACKAGES := $(MAIN_COMBO_PACKAGES) # Build bricht ab
# GLUON_TLWR710_SITE_PACKAGES := $(MAIN_COMBO_PACKAGES) # some wr710 versions only have 4MB

# mpc85xx-generic
GLUON_TLWDR4900_SITE_PACKAGES := $(MAIN_COMBO_PACKAGES)

