#!/bin/sh

cat > config/archives/security.list.chroot <<EOF
deb https://security.debian.org/debian-security trixie-security main contrib non-free non-free-firmware
EOF
