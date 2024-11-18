#!/usr/bin/env sh

set -eu

[ ! -f rarreg.key ] && echo "ERR: rarreg.key not found." && exit 1

[ -d rarlab/bin ] && rm -rf rarlab/bin

mkdir rarlab/bin

lipo -create rarlab/bin-arm/rar rarlab/bin-x64/rar -output rarlab/bin/rar
lipo -create rarlab/bin-arm/unrar rarlab/bin-x64/unrar -output rarlab/bin/unrar

pkgbuild --identifier com.rarlab.pkg.rar \
         --version 7.01 \
         --min-os-version 10.9 \
         --install-location /usr/local \
         --root rarlab \
         Rar-7.01-macOS.pkg
