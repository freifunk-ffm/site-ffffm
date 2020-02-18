GLUON_FEATURES := \
	autoupdater \
	config-mode-outdoor \
	config-mode-domain-select \
	ebtables-filter-multicast \
	ebtables-filter-ra-dhcp \
	ebtables-source-filter \
	mesh-batman-adv-15 \
	mesh-vpn-fastd \
	radv-filterd \
	respondd \
	status-page \
	web-wizard \
	web-private-wifi \
	web-logging \
	web-advanced \

GLUON_SITE_PACKAGES := \
	iwinfo \
	iptables \
	haveged \
	ffffm-banner_legacy \
	ffffm-keep-radio-channel \
	ffffm-button-bind \
	ffffm-ath9k-broken-wifi-workaround \
	gluon-ssid-changer \
	ffffm-autoupdater-use-site-conf-branch \
	-gluon-web-autoupdater \
	respondd-module-airtime \
	gluon-config-mode-domain-select
	ffda-domain-director \
	gluon-web-ffda-domain-director \

include $(GLUON_SITEDIR)/specific_site.mk

# Enable multidomain support
GLUON_MULTIDOMAIN := 1


# This is the 'Test' site branch.
FFM_SITE_BRANCH := test

########################################################################
# BEGIN: "Generic homebrew build preparation"
#
# To build an own Frankfurt firmware please see:
# https://github.com/freifunk-ffm/site-ffffm#eine-eigene-frankfurter-firmware-bauen
########################################################################

# Homebrew Gluon firmware release name
HOMEBREW_GLUON_RELEASE := vHomebrew

# For homebrew development add e.g. date and time
# (Note: Don't use the ':' char. It will break the build)
HOMEBREW_GLUON_RELEASE := $(HOMEBREW_GLUON_RELEASE)-$(FFM_SITE_BRANCH)-$(shell date '+%m%d')

########################################################################
# END: "Generic homebrew build preparation"
#
# Admin/Support hint:
# With the few lines above you can identify exactly which branch of our
# site was used to create the homebrew firmware.
########################################################################

###

########################################################################
# Normally the important parameters are specified by the superimposed
# build process (e.g. CI and/or CD).
# If this is not the case the following '?=' assignments apply.
########################################################################

# Autoupdater default branch.
# Allow overriding from the command line.
GLUON_BRANCH ?= $(FFM_SITE_BRANCH)

# Gluon release information.
# Allow overriding from the command line.
GLUON_RELEASE ?= $(HOMEBREW_GLUON_RELEASE)

# Default priority for updates.
# Allow overriding from the command line.
GLUON_PRIORITY ?= 0

# Languages to include.
# Allow overriding from the command line.
GLUON_LANGS ?= de

# Region information for regulatory compliance.
# Allow overriding from the command line.
GLUON_REGION ?= eu

# Prefer ath10k firmware with given mesh support (ibss or 11s).
# Allow overriding from the command line.
GLUON_WLAN_MESH ?= 11s

# Build of image types.
# Allow overriding from the command line.
GLUON_DEPRECATED ?= full

###
