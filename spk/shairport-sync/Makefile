SPK_NAME = shairport-sync
SPK_VERS = 3.3.1
SPK_REV = 1
SPK_ICON = src/shairport-sync.png

DEPENDS =  cross/busybox cross/$(SPK_NAME)

MAINTAINER = SynoCommunity
DESCRIPTION = Use Synology NAS as an AirPlay receiver. Requires USB soundcard or speakers.
RELOAD_UI = no
STARTABLE = yes
DISPLAY_NAME = Shairport Sync
CHANGELOG = "Use Shairport Sync 3.3.1."

HOMEPAGE = https://github.com/mikebrady/shairport-sync
LICENSE  =


SERVICE_USER = auto
SERVICE_SETUP = src/service-setup.sh

POST_STRIP_TARGET = shairport_extra_install

BUSYBOX_CONFIG = daemon
ENV += BUSYBOX_CONFIG="$(BUSYBOX_CONFIG)"

include ../../mk/spksrc.spk.mk

.PHONY: shairport_extra_install
shairport_extra_install:
	install -m 755 -d $(STAGING_DIR)/var
	install -m 644 src/alsa.conf $(STAGING_DIR)/share/alsa/alsa.conf
	install -m 644 src/shairport-sync.conf $(STAGING_DIR)/var/shairport-sync.conf
