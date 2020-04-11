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
	haveged \
	ffffm-button-bind \
	respondd-module-airtime \
	ffda-domain-director \
	gluon-web-ffda-domain-director \

include $(GLUON_SITEDIR)/specific_site.mk

# Enable multidomain support
GLUON_MULTIDOMAIN := 1

#####################################################################################################################

DEFAULT_GLUON_CHECKOUT := v2020.1.1
GLUON_CHECKOUT ?= $(DEFAULT_GLUON_CHECKOUT)

# FFFFM Base Release
DEFAULT_BASE_VERSION := v4.4

# GIT Properties
ifndef GLUON_SITEDIR
	GIT_BRANCH := $(shell git rev-parse --abbrev-ref HEAD)
	COMMIT_DESCRIPTION := $(shell git describe --tags --long)
	BUILD_DATESTAMP := $(shell [ -f build_date ] && cat build_date || date '+%m%d')
else
	GIT_BRANCH := $(shell git -C $(GLUON_SITEDIR) rev-parse --abbrev-ref HEAD)
	COMMIT_DESCRIPTION := $(shell git -C $(GLUON_SITEDIR) describe --tags --long)
	BUILD_DATESTAMP := $(shell [ -f $(GLUON_SITEDIR)/build_date ] && cat $(GLUON_SITEDIR)/build_date || date '+%Y%m%d')
endif


### Build Release Name
DEFAULT_GLUON_BRANCH := experimental
DEFAULT_GLUON_RELEASE := $(DEFAULT_BASE_VERSION)-$(DEFAULT_GLUON_BRANCH)-$(BUILD_DATESTAMP)-$(GIT_COMMIT)
ifeq ($(GIT_BRANCH),next)
	DEFAULT_GLUON_BRANCH := next
	DEFAULT_GLUON_RELEASE := $(DEFAULT_BASE_VERSION)-$(DEFAULT_GLUON_BRANCH)-$(BUILD_DATESTAMP)-$(GIT_COMMIT)
else ifeq ($(GIT_BRANCH),stable)
	DEFAULT_GLUON_BRANCH := rc
	DEFAULT_GLUON_RELEASE := $(DEFAULT_BASE_VERSION)-$(DEFAULT_GLUON_BRANCH)-$(BUILD_DATESTAMP)-$(GIT_COMMIT)
else ifeq ($GIT_BRANCH,HEAD)
	# Determine TAG - if tagged set Version
	ifndef GLUON_SITEDIR
		GIT_TAG := $(shell git describe --exact-match --tags HEAD 2>/dev/null || echo false)
		ifneq ($(GIT_TAG),false)
			DEFAULT_GLUON_BRANCH := stable
			DEFAULT_GLUON_RELEASE := $(GIT_TAG)
		endif
	else
		GIT_TAG := $(shell git -C $(GLUON_SITEDIR) describe --exact-match --tags HEAD 2>/dev/null || echo false)
		ifneq ($(GIT_TAG),false)
			DEFAULT_GLUON_BRANCH := stable
			DEFAULT_GLUON_RELEASE := $(GIT_TAG)
		endif
	endif
endif

# Set final Branch and release

GLUON_BRANCH ?= $(DEFAULT_GLUON_BRANCH)
GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)

# Default priority for updates.
GLUON_PRIORITY ?= 0

# Languages to include
GLUON_LANGS ?= de

# region information for regulatory compliance
GLUON_REGION ?= eu

# Build only sysupgrade for deprecated
GLUON_DEPRECATED ?= upgrade
