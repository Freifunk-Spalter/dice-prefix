#
# Copyright (C) 2012-2015 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=diceprefix
PKG_VERSION:=2020-10-13
PKG_RELEASE:=1

PKG_MAINTAINER:=Nick Hainke <vincent@systemli.org>

define Package/diceprefix
  SECTION:=utils
  CATEGORY:=Utilities
  TITLE:=Dice You a Prefix of the Default Gateway Programm
  URL:=https://github.com/Freifunk-Spalter/auto-prefix-configuration-with-source-specifc-routing
  DEPENDS:=+sipcalc +coreutils-shuf
endef

define Package/diceprefix/description
  Script that allows to autoconfigure prefixes for source specific routing
endef

define Package/diceprefix/install
	$(INSTALL_DIR) $(1)/usr/sbin
	$(INSTALL_BIN) ./files/assign_prefixes $(1)/usr/sbin/
	$(INSTALL_BIN) ./files/legacy_prefixes $(1)/usr/sbin/
	$(INSTALL_BIN) ./files/new_prefixes $(1)/usr/sbin/
	$(INSTALL_BIN) ./files/remove_prefixes $(1)/usr/sbin/
	$(INSTALL_BIN) ./files/sleep_random $(1)/usr/sbin/
endef

$(eval $(call BuildPackage,diceprefix))
