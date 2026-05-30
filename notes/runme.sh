#!/bin/bash -xv

# -usb -device usb-host,vendorid=1050,productid=0407
qemu-system-x86_64 \
  -enable-kvm \
  -cpu max \
  -cdrom ./result/iso/nixos-yubikey-20.03beta-156105.gfedcba-x86_64-linux.iso \
  -device uefi-vars-x64,jsonfile=./vars.json \
  -m 8G \
  -smp 4 \
  -usb -device usb-host,hostbus=3,hostaddr=51
