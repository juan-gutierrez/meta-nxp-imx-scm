# Copyright (C) 2015 Freescale Semiconductor
# Released under the MIT license (see COPYING.MIT for the terms)

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"

SRC_URI += " \
    file://0001-ARM-dts-imx6dscm-evb-board-support.patch \
    file://0002-ARM-dts-btwifi-enetirq-hdcp-EVB-board-support.patch \
    file://0003-ARM-dts-btwifi-enetirq-hdcp-2GB-EVB-board-support.patch \
    file://0004-ARM-dts-imx6dq-scm-QWKS-board-support.patch \
    file://0005-Add-touchscreen-driver-for-LCD8000-97C-display.patch \
    file://0006-MA-7208-i.mx6-Arrow-Linux-3.14.28-CAAM-SNVS-enabled-.patch \
    file://0007-MLK-11888-1-arm-imx6-common-fix-ddr_type-identificat.patch \
    file://0008-MLK-11889-2-arm-imx6-low-power-mode-support-for-imx6.patch \
    file://0009-reboot-issue-after-the-system-wakes-from-DSM.patch \
    file://0010-MLK-12023-1-ARM-dts-imx-imx6q-add-busfreq-device-nod.patch \
    file://0011-MLK-12023-2-arm-imx6-refactor-wfe-ddr3-freq-change-l.patch \
    file://0012-MLK-12023-3-arm-imx6q-add-lpddr2-bus-frequency-suppo.patch \
    file://0013-ARM-dts-imx6dqscm-1gb-evb-ldo-400mhz-lddr2-freq.patch \
    file://0014-ARM-dts-murata-wifi-QWKS-board-support.patch \
    file://0015-MXSCM-67-ts-cannot-work-after-resume-from-DSM.patch \
    file://0016-ARM-dta-bus-freq-disabled-on-IMX6DQSCM.patch \
    file://0017-ARM-dts-IMX6DQSCM-qwks-rev2-new-features-added.patch \
    file://0018-ARM-dts-IMX6DQSCM-QWKS-Rev-2-board-support.patch \    
    file://0019-ARM-dtb-IMX6DQSCM-QWKS-rev-1-rev-2-ts-ct365.patch \
    file://0020-ARM-dtb-Add-wifi-reg-wlreg_on-for-QWKS-board.patch \
    file://0021-ARM-imx-lppdr2-freq-save-axi-clock-root-from-pll3-pf.patch \
    file://0022-ARM-imx6-lpddr2-2-channel-suspend-support.patch \
    file://0023-clk-imx6-ldb-clock-root-from-mmdc1_axi_clk_root.patch \
    file://0024-ARM-dts-add-fix-interleave-mode-imx6dqscm.patch \
    file://0025-ARM-imx6-lpddr2-2-channel-suspend-support.patch \
    file://0026-ARM-dts-change-clock-parent-for-ldb-di-interface.patch \
    file://0027-MXSCM-93-dts-imx6dqscm-qwks-rev1-dcic-change.patch \
    file://0028-Revert-clk-imx6-ldb-clock-root-from-mmdc1_axi_clk_ro.patch \
    file://0029-Revert-ARM-dts-change-clock-parent-for-ldb-di-interf.patch \
    file://0030-ARM-dtb-Add-dts-for-the-hvb-scm-board.patch \
    file://0031-ARM-dtb-IMX6DQSCM-HVB-512MB-ePoP-support.patch \
    file://0032-ARM-dtb-Add-gpio-wlreg_on-for-wifi-enablement.patch \
    file://0033-ARM-dtb-Add-uart2-support-for-BT-bcm-module.patch \
    file://0034-ARM-dtb-Add-uart5-support-for-BT-bcm-module.patch \
    file://0035-ARM-dtb-IMX6DQSCM-512MB-ePoP-support.patch \
    file://0036-Enable-1gb-and-2gb-for-hvb-on-imx6dqscm.patch \
    file://0037-ARM-dtb-IMX6DQSCMQWKS-eMMC-support.patch \
"
python do_patch_prepend() {
    import subprocess
    subprocess.call("echo Reseting to rel_imx_3.14.52_1.1.0_ga", shell=True)
    subprocess.call("git -C ${S} checkout rel_imx_3.14.52_1.1.0_ga", shell=True)
}

COMPATIBLE_MACHINE = "(imx6dqscm)"
