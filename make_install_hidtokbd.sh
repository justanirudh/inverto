#!/bin/bash
#run this script from source directory (linux-source-3.16)
echo "compiling.."
make SUBDIRS=drivers/hid/usbhid CONFIG_USB_KBD=m modules
echo "installing.."
insmod drivers/hid/usbhid/usbkbd.ko
echo "linking to new driver.."
echo -n "1-2:1.0" > /sys/bus/usb/drivers/usbhid/unbind
echo -n "1-2:1.0" > /sys/bus/usb/drivers/usbkbd/bind
