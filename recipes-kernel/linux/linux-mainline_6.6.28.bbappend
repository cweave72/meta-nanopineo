# Enables USB GADGET support (CDC, ECM)
# CONFIG_USB_ACM=y    : Enable the CDC ACM built-in driver.
FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

unset KBUILD_DEFCONFIG

#SRC_URI += "file://defconfig"
#
# The meta-sunxi recipes-kernel tasks manipulate CONFIGs programmatically so
# overriding an entire defconfig was not working.  Apply customizations below.
do_configure:append() {
    bbnote "Applying kernel customizations."
    kernel_conf_variable LOCALVERSION "\"yocto-standard-custom\""
    kernel_conf_variable USB_ACM y
    kernel_conf_variable USB_GADGET y
    kernel_conf_variable USB_ETH y

}
