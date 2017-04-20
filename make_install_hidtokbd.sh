#!/bin/bash
echo "compiling.."
make SUBDIRS=drivers/hid/usbhid CONFIG_USB_KBD=m modules
echo "installing and linking.."
insmod drivers/hid/usbhid/usbkbd.ko
./hid_to_kbd.sh
