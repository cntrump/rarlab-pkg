# Rarlab pkg shell script

RAR version: `7.10`

1. Download x64 and ARM versions of RAR for macOS from https://www.rarlab.com/download.htm
2. Place the latest versions of `rar` and `unrar` files in the corresponding architecture's `bin-${arch}` directory
3. Put your license file `rarreg.key` in the root directory of this repository
4. Execute the script `make-rarpkg.sh`, which will generate a universal format pkg installation package

## Example

```bash
$ ./build.sh

INFO: Rar version: 7.10
INFO: rarreg.key not found, the created pkg installer will use trial license.
INFO: rarlab/bin/rar found.
INFO: rarlab/bin/unrar found.
INFO: rarlab/etc/rarfiles.lst found.
INFO: rarlab/lib/default.sfx found.
pkgbuild: Inferring bundle components from contents of rarlab
pkgbuild: Wrote package to Rar-7.10-macOS.pkg
```

## How to buy WinRAR and RAR license.

If you wish to use WinRAR and RAR after the evaluation period of 40 days, you need to purchase its license from one of the regional dealers listed here. You can also check the latest price list and buy on-line at [www.rarlab.com](https://www.rarlab.com).

Upon receipt of your registration fee you will receive an email containing a registration key file corresponding to the user name string which you have chosen. Please specify a valid email address when buying the licence, as it will be used to send you the key file.

The registration email will also contain all necessary instructions, so please just follow them. Below, we provide a brief explanation of the typical registration procedure, but instructions in the email are more up to date than this file and should thus have a higher precedence.

If you use WinRAR, you will need to copy the registration key file (`rarreg.key`) to a WinRAR folder or to `%APPDATA%\WinRAR` folder. By default WinRAR folder is `C:\Program Files\WinRAR`, but it can be changed by a user when installing WinRAR.

If the key is archived in a .rar or .zip file, please extract `rarreg.key` from the archive before copying it.

If you use RAR/Unix and RAR for OS X, you should copy `rarreg.key` to your home directory or to one of the following directories: `/etc`, `/usr/lib`, `/usr/local/lib`, `/usr/local/etc`. You may rename it to `.rarreg.key` or `.rarregkey`, if you wish, but `rarreg.key` is also valid.

If you use RAR/DOS, you will need to copy `rarreg.key` to folder containing RAR executable (`rar32.exe`).

WinRAR, RAR for Unix, DOS and OS X now use the same registration key format, so you can use the same key with current WinRAR and RAR versions for all mentioned platforms. It is not guaranteed for WinRAR and RAR versions that are not equal to version included to this distributive. For example, versions prior to 2.60 used different keys.

Please send your further questions about sales and licensing to sales@win-rar.com. English, French, German or Spanish please. 