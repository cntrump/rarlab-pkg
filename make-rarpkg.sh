#!/usr/bin/env sh

set -eu

RED='\033[0;31m'
GREEN='\033[0;32m'
ORANGE='\033[38;5;208m'
NC='\033[0m' # No Color

rar_version=7.01
rar_keyfile=rarreg.key

echo "${GREEN}INFO${NC}: Rar version: ${rar_version}"

[ -d rarlab/bin ] && rm -rf rarlab/bin

mkdir rarlab/bin

lipo -create bin-arm/rar bin-x64/rar -output rarlab/bin/rar
lipo -create bin-arm/unrar bin-x64/unrar -output rarlab/bin/unrar

if [ ! -f ${rar_keyfile} ]; then
  echo "${ORANGE}INFO${NC}: ${rar_keyfile} not found, the created pkg installer will use trial license."
else
  echo "${GREEN}INFO${NC}: found ${rar_keyfile}, it will be packaged into pkg and later installed in the /usr/local/lib."
  cp -f ${rar_keyfile} rarlab/lib/
fi

function check_file() {
  if [ -f $1 ]; then
    echo "${GREEN}INFO${NC}: $1 found."
    return 0
  fi

  echo "${RED}ERR${NC}: $0 not found!"
  exit 1
}

check_file rarlab/bin/rar
check_file rarlab/bin/unrar
check_file rarlab/etc/rarfiles.lst
check_file rarlab/lib/default.sfx

pkgbuild --identifier com.rarlab.pkg.Rar \
         --version ${rar_version} \
         --min-os-version 10.9 \
         --install-location /usr/local \
         --compression latest \
         --root rarlab \
         Rar-${rar_version}-macOS.pkg
