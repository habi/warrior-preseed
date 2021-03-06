#!/bin/bash

VMNAME="archiveteam-warrior-2"
OVA_OUT="archiveteam-warrior-v2-$( date +%Y%m%d ).ova"

VBoxManage modifyhd --compact os.vdi
VBoxManage modifyhd --compact data.vdi

VBoxManage export $VMNAME \
  --output $OVA_OUT \
  --vsys 0 \
  --product "ArchiveTeam Warrior" \
  --vendor "ArchiveTeam" \
  --vendorurl "http://www.archiveteam.org/" \
  --version "2"

