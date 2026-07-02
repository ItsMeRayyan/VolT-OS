#!/bin/bash
set -e

ARCH=amd64

lb config \
  --mode debian \
  --distribution bookworm \
  --architecture ${ARCH} \
  --binary-images iso-hybrid \
  --debian-installer live \
  --archive-areas "main contrib non-free non-free-firmware" \
  --mirror-bootstrap http://deb.debian.org/debian/ \
  --mirror-chroot http://deb.debian.org/debian/ \
  --mirror-binary http://deb.debian.org/debian/ \
  --security true \
  --bootappend-live "boot=live components quiet splash"
