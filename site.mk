GLUON_SITE_PACKAGES := \
	gluon-mesh-batman-adv-14 \
	gluon-alfred \
	gluon-announced \
	gluon-autoupdater \
	gluon-setup-mode \
	gluon-config-mode-core \
	gluon-config-mode-autoupdater \
	gluon-config-mode-hostname \
	gluon-config-mode-mesh-vpn \
	gluon-config-mode-geo-location \
	gluon-config-mode-contact-info \
	gluon-ebtables-filter-multicast \
	gluon-ebtables-filter-ra-dhcp \
	gluon-luci-admin \
	gluon-luci-autoupdater \
	gluon-luci-portconfig \
	gluon-luci-private-wifi \
	gluon-luci-mesh-vpn-fastd \
	gluon-luci-wifi-config \
	gluon-luci-node-role \
	gluon-luci-switchconfig \
	gluon-next-node \
	gluon-mesh-vpn-fastd \
	gluon-radvd \
	gluon-status-page \
	iwinfo \
	iptables \
	ffffm-ebtables-net-rules \
	haveged 


#####################################################################################################################
# Firmware Versioning
#####################################################################################################################
# Release Stable: x.y-stable
# Release Test:   x.y.z-test
# Release Dev:    x.y.z.w-dev (+Date/Time)
#
# Geht eine Dev-Version in Test über, so können identische  Dateien in 'test' und 'dev' abgelegt werden.
# Geht eine Test-Version in Stable über, so können identische Dateien in 'stable', 'test' und 'dev' abgelegt werden. 
#
# Autoupdate ist weiterhin gewehrleistet! 
# Per Definition ist 'x.y-stable' grösser als 'x.y.z-test' und grösser als 'x.y.z.w-dev'
#####################################################################################################################

# This is the test branch -> x.y.z-test
# This needs to be changed after each online release
DEFAULT_GLUON_RELEASE := ffm-1.10.1-test

# For homebrew development add e.g. date and time 
# (don't use the ':' char. It will break the build)
# DEFAULT_GLUON_RELEASE := $(DEFAULT_GLUON_RELEASE)-$(shell date '+%m.%d-%H%M')

# Allow overriding the release number from the command line
GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)

# Development branch information
GLUON_BRANCH ?= test

# Default priority for updates.
# GLUON_PRIORITY ?= 0

# Languages to include
GLUON_LANGS ?= en de
