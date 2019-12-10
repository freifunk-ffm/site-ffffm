GLUON_FEATURES := \
	autoupdater \
	ebtables-filter-multicast \
	ebtables-filter-ra-dhcp \
	ebtables-limit-arp \
	ebtables-source-filter \
	mesh-batman-adv-14 \
	mesh-batman-adv-15 \
	mesh-vpn-fastd \
	radvd \
	radv-filterd \
	respondd \
	status-page \
	web-wizard \
	scheduled-domain-switch \

GLUON_SITE_PACKAGES := \
	iwinfo \
	iptables \
	haveged \

include $(GLUON_SITEDIR)/specific_site.mk

# Enable multidomain support
GLUON_MULTIDOMAIN := 1

#####################################################################################################################

# This is the Stable branch

# Gluon Base Release
DEFAULT_GLUON_RELEASE := v3.4

# Development branch information
<<<<<<< HEAD
GLUON_BRANCH ?= stable
=======
GLUON_BRANCH ?= dev
>>>>>>> Domain Migration: Prepare (& Shrink) packages

DEFAULT_GLUON_RELEASE := $(DEFAULT_GLUON_RELEASE)-$(GLUON_BRANCH)-$(shell date '+%m%d')

# Allow overriding the release number from the command line
GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)

# Default priority for updates.
GLUON_PRIORITY ?= 0

# Languages to include
GLUON_LANGS ?= de

# region information for regulatory compliance
GLUON_REGION ?= eu

# Prefer ath10k firmware with given mesh support (ibss or 11s)
GLUON_WLAN_MESH ?= 11s

# Build only sysupgrade for deprecated
GLUON_DEPRECATED ?= upgrade
