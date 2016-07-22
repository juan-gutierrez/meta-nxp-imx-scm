# Copyright (C) 2015 Freescale Semiconductor
# Released under the MIT license (see COPYING.MIT for the terms)

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += " \
    file://0001-Add-support-for-IMX6SXSCM-EVB-board.patch \
    file://0002-mx6sxscm-Use-proper-gpios-for-lvds-lcd-backlight.patch \
    file://0003-Add-support-for-IMX6SX-XTOP-board.patch \
    file://0004-Adjust-PMIC-voltages-for-IMX6SXSCM-EVB-board.patch \
    file://0005-Add-support-for-IMX6SXSCM-512MB-and-EPOP.patch \
    file://0006-enet-reference-clock-pin-assignment.patch \
    file://0007-Set-SWBST-pfuze-voltage-to-enable-USB-host-mode.patch \
    file://0008-Disable-card-detect-on-SDHC2-for-imx6sxscm-evb.patch \
    file://0009-mx6sxscm-set-the-correct-gpio-for-LCD-backlight.patch \
    file://0010-mx6sxscm-enable-i2c4-for-SCM-EVB-board.patch \
    file://0011-Add-qspi2-and-m4fastup-defconfigs-for-mx6sxscm.patch \
    file://0012-Change-SW2A-Standy-voltage-configuration.patch \
"

COMPATIBLE_MACHINE = "(imx6sxscm)"
