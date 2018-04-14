GLUON_SITE_PACKAGES := \
	gluon-mesh-babel \
	gluon-l3roamd \
	gluon-radvd \
	gluon-xlat464-clat \
	gluon-respondd \
	respondd-module-airtime \
	gluon-autoupdater \
	gluon-setup-mode \
	gluon-client-bridge \
	gluon-config-mode-core \
	gluon-config-mode-autoupdater \
	gluon-web-prefixd \
	gluon-config-mode-hostname \
	gluon-config-mode-geo-location \
	gluon-config-mode-contact-info \
	gluon-web-admin \
	gluon-web-autoupdater \
	gluon-web-wifi-config \
	gluon-web-network \
	gluon-mesh-vpn-fastd \
	gluon-web-mesh-vpn-fastd \
	gluon-status-page \
	gluon-iptables-clamp-mss-to-pmtu \
	ffffm-banner \
	ffffm-keep-radio-channel \
	ffffm-autoupdater-use-site-conf-branch \
	prefixd \
	kmod-nat46 \
	babeldev \
	haveged \
	iwinfo \
	iptables \
	tcpdump \
	socat \

include $(GLUON_SITEDIR)/specific_site.mk 


ifeq ($(GLUON_TARGET),ar71xx-tiny)
# save some space to build ar71xx-tiny package
GLUON_SITE_PACKAGES += -libpcap
GLUON_SITE_PACKAGES += -tcpdump
GLUON_SITE_PACKAGES += -strace
endif

ifeq ($(GLUON_TARGET),x86-64)
GLUON_DEBUG := 1
GLUON_SITE_PACKAGES += \
	kmod-cfg80211 
endif

#####################################################################################################################

# This is the Dev branch
GLUON_MULTIDOMAIN=1

# Gluon Base Release
DEFAULT_GLUON_RELEASE := master_babel

# For homebrew development add e.g. date and time 
# (Note: Don't use the ':' char. It will break the build)
DEFAULT_GLUON_RELEASE := $(DEFAULT_GLUON_RELEASE)-$(shell date '+%Y.%m.%d')

# Allow overriding the release number from the command line
GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)

# Development branch information
GLUON_BRANCH ?= babel

# Default priority for updates.
# GLUON_PRIORITY ?= 0

# Languages to include
GLUON_LANGS ?= en de

# region information for regulatory compliance
GLUON_REGION ?= eu

# Prefer ath10k firmware with 802.11s support
GLUON_ATH10K_MESH ?= 11s
