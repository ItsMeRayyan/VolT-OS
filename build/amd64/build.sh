#!/bin/bash
set -e

echo "=== Building VolT OS (AMD64) ==="

cd "$(dirname "$0")"

sudo lb clean --purge

lb config \
  --distribution trixie \
  --architecture amd64 \
  --binary-images iso-hybrid \
  --debian-installer live \
  --archive-areas "main contrib non-free non-free-firmware"

sudo lb build

echo "Build complete!"
