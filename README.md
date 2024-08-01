## NanoPi Neo Yocto layer

This is layer used to build a lab-tool NanoPi Neo image with various
networking and utilities included.

Build the image:  `bitbake core-image-lab`

This layer depends on:

    URI: git://git.yoctoproject.org/poky.git
    branch: scarthgap

    URI: git://git.openembedded.org/meta-openembedded
    branch: scarthgap

    URI: git://git.yoctoproject.org/meta-arm
    branch: scarthgap
