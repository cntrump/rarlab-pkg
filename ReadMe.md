# Rarlab pkg shell script

1. Download x64 and ARM versions of RAR for macOS from https://www.rarlab.com/download.htm
2. Place the latest versions of `rar` and `unrar` files in the corresponding architecture's `rarlab/bin-${arch}` directory
3. Put your license file `rarreg.key` in the root directory of this repository
4. Execute the script `make-rarpkg.sh`, which will generate a universal format pkg installation package
