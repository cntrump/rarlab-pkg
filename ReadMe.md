# Rarlab pkg shell script

RAR version: `7.01`

1. Download x64 and ARM versions of RAR for macOS from https://www.rarlab.com/download.htm
2. Place the latest versions of `rar` and `unrar` files in the corresponding architecture's `bin-${arch}` directory
3. Put your license file `rarreg.key` in the root directory of this repository
4. Execute the script `make-rarpkg.sh`, which will generate a universal format pkg installation package

## Example

```bash
$ ./make-rarpkg.sh

INFO: Rar version: 7.01
INFO: rarreg.key not found, the created pkg installer will use trial license.
INFO: rarlab/bin/rar found.
INFO: rarlab/bin/unrar found.
INFO: rarlab/etc/rarfiles.lst found.
INFO: rarlab/lib/default.sfx found.
pkgbuild: Inferring bundle components from contents of rarlab
pkgbuild: Wrote package to Rar-7.01-macOS.pkg
```