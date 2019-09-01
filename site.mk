GLUON_FEATURES := \
	autoupdater \
	ebtables-filter-multicast \
	ebtables-filter-ra-dhcp \
	ebtables-limit-arp \
	ebtables-source-filter \
	mesh-batman-adv-14 \
	mesh-vpn-fastd \
	radvd \
	radv-filterd \
	respondd \
	scheduled-domain-switch \
	status-page \
	web-advanced \
	web-wizard \
	web-private-wifi \
	web-logging \


GLUON_SITE_PACKAGES := \
	iwinfo \
	iptables \
	haveged \
	ffffm-banner_legacy \
	ffffm-keep-radio-channel \
	ffffm-button-bind \
	ffffm-ath9k-broken-wifi-workaround \
	gluon-ssid-changer \
	respondd-module-airtime \


include $(GLUON_SITEDIR)/specific_site.mk

# Enable multidomain support
GLUON_MULTIDOMAIN := 1

#####################################################################################################################

# This is the Stable branch

# Gluon Base Release
DEFAULT_GLUON_RELEASE := vHomebrew-stable

# For homebrew development add e.g. date and time
# (Note: Don't use the ':' char. It will break the build)
DEFAULT_GLUON_RELEASE := $(DEFAULT_GLUON_RELEASE)-$(shell date '+%Y.%m.%d')

# Allow overriding the release number from the command line
GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)

# Development branch information
GLUON_BRANCH ?= stable

# Default priority for updates.
GLUON_PRIORITY ?= 0

# Languages to include
GLUON_LANGS ?= de

# region information for regulatory compliance
GLUON_REGION ?= eu

# Prefer ath10k firmware with given mesh support (ibss or 11s)
GLUON_WLAN_MESH ?= ibss
