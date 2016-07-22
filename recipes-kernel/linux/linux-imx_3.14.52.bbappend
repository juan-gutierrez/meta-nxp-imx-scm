# Copyright (C) 2015 Freescale Semiconductor
# Released under the MIT license (see COPYING.MIT for the terms)

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"

SRC_URI += " \
    file://0001-Add-support-for-IMX6SXSCM-EVB-board.patch \
    file://0002-dtb-imx6sx-sdb-Use-proper-pinctrl-for-pwm3-and-pwm4.patch \ 
    file://0003-dtb-imx6sx-sdb-use-proper-int-gpio-for-mag3110-and-i.patch \
    file://0004-dtb-imx6sx-sdb-fix-int-gpio-for-mma845x.patch \
    file://0005-dtb-imx6sxscm-adding-lcd-suport-for-imx6sxscm.patch \
    file://0006-dtb-imx6sxscm-add-support-for-M4-and-Linux-dual-boot.patch \
    file://0007-ARM-dts-modify-enet-signals-for-MX6SXSCM.patch \
    file://0008-Add-Micrel-phy-init-for-imx6sx.patch \
    file://0009-ARM-dts-modify-reset-enet-phy-signal.patch \
    file://0010-ARM-dts-add-support-for-imx6sx-512mb-xtop-board.patch \
    file://0011-ARM-dts-support-for-imx6sxscm-flavors.patch \
    file://0012-rpmsg-imx-support-for-configurable-vring-address-by-.patch \
    file://0013-ARM-dts-configure-vring-memory-at-the-top-of-512MB-m.patch \
    file://0014-ARM-dts-add-support-for-ov5640-camera-for-sx-scm-boa.patch \
    file://0015-Add-Murata-Wifi-ZP-support-for-the-EVB-SCMIMX6SX.patch \
    file://0016-ARM-dts-move-the-sii902x-to-the-right-i2c-port.patch \
    file://0017-ARM-dts-set-CAN-tx_en_gpio-so-sdtby-is-deasserted.patch \
    file://0018-ARM-dts-Add-imx6sxscm-dtb-for-wifi-support.patch \
    file://0019-MXSCM-178-ARM-dts-imx6sxscm-emmc-DDR50-enable.patch \
    file://0020-MXSCM-160-ARM-dts-remove-duplicated-dts-files.patch \
    file://0021-ARM-dts-enable-Murata-s-bt-on-imx6sxscm-evb.patch \
    file://0022-ARM-dts-Disable-uart5-imx6sxscm-evb.patch \
    file://0023-ARM-dts-Disable-spdif-when-emmc-is-configured.patch \
    file://0024-ARM-dts-disable-vadc-module-for-SCM.patch \
    file://0025-ARM-dts-disable-PCIe-module-for-SCM.patch \
    file://0026-workaround-reset-on-DSM-when-wakeup-dev-enabled.patch \
"

COMPATIBLE_MACHINE = "(imx6sxscm)"
