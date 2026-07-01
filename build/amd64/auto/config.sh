#!/bin/sh

lb config \
  --distribution trixie \
  --architecture amd64 \
  --binary-images iso-hybrid \
  --debian-installer live \
  --archive-areas "main contrib non-free non-free-firmware"
