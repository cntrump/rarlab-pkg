#!/usr/bin/env sh

set -eu

rar_version=7.01
rar_keyfile=rarreg.key

[ -d rarlab/bin ] && rm -rf rarlab/bin

mkdir rarlab/bin

lipo -create rarlab/bin-arm/rar rarlab/bin-x64/rar -output rarlab/bin/rar
lipo -create rarlab/bin-arm/unrar rarlab/bin-x64/unrar -output rarlab/bin/unrar

if [ ! -f ${rar_keyfile} ]; then
  echo "INFO: ${rar_keyfile} not found, the created pkg installer will use trial license."
else
  echo "INFO: found ${rar_keyfile}, it will be packaged into pkg and later installed in the /usr/local/lib."
  cp -f ${rar_keyfile} rarlab/lib/
fi

pkgbuild --identifier com.rarlab.pkg.Rar \
         --version ${rar_version} \
         --min-os-version 10.9 \
         --install-location /usr/local \
         --root rarlab \
         Rar-${rar_version}-macOS.pkg
