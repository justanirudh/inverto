#!/bin/bash
echo "recompiling and relinking"
./kbd_to_hid.sh
rmmod drivers/hid/usbhid/usbkbd.ko
insmod drivers/hid/usbhid/usbkbd.ko
./hid_to_kbd.sh
