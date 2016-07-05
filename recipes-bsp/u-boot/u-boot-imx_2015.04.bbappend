# Copyright (C) 2015 Freescale Semiconductor
# Released under the MIT license (see COPYING.MIT for the terms)

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += " \
    file://0001-Add-support-for-SCM-1GB-Freedom-X-Rev1.0-board.patch \
    file://0002-Added-LPDDR2-Interleave-Mode-support.patch \
    file://0003-Add-support-for-SCM-1GB-EVB-board.patch \
    file://0004-Add-more-configurations-for-the-FreedomX-R1.0-board.patch \
    file://0005-Modify-USDHC2-card-detect-CD-GPIO-pin.patch \
    file://0006-Add-CONFIG_SCMEVB-to-support-diff-on-FreeX-and-EVB.patch \
    file://0007-Ethernet-enable-on-iMX6scm-EVB-board.patch \
    file://0008-Change-board-name-from-mx6scmfreeX-to-mx6dqscmqwks.patch \
    file://0009-Add-support-for-SCM-2GB-EVB-board.patch \
    file://0010-imx-mx6dqscm-qwks-board-dtb-file-name-updated.patch \
    file://0011-imx-mx6dqscm-temporary-remove-rev2-dtb.patch \
    file://0012-IMX6DQSCM-DCD-table-values-correction.patch \
    file://0013-include-LPDDR2-interleave-and-fix-modes-IMX6DQSCM.patch \
    file://0014-Enable-imx6dqscm-2GB-support-on-fix-mode.patch \
    file://0015-MXSCM-66-enable-lvds-pwr-signal-on-imx6dqscm-qwks.patch \
    file://0016-scm-config-Use-default-values-for-ARCR-Dynamic-Jump-.patch \
    file://0017-configs-Add-the-DMFC-config-option-to-upgrade-perfor.patch \
    file://0018-Add-partitions-for-imx6dqscm-internal-SPI-NOR.patch \
    file://0019-Add-support-for-imx6dqscm-HVB-board.patch \
    file://0020-Add-Android-config-files-for-imx6dqscm-platforms.patch \
    file://0021-Add-imx6dqscm-ePoP-support.patch \
    file://0022-Add-support-for-2GB-on-imx6dqscm-HVB-board.patch \
    file://0023-scm-config-Use-default-ARCR-Dynamic-Jump-params-for-.patch \
"
python do_patch_prepend() {
    import subprocess
    subprocess.call("echo Reseting to rel_imx_3.14.52_1.1.0_ga", shell=True)
    subprocess.call("git -C ${S} checkout rel_imx_3.14.52_1.1.0_ga", shell=True)
}

COMPATIBLE_MACHINE = "(imx6dqscm)"
