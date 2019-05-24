# MinitelLinuxTerminal

This script permit to open a serial port on a Linux machine as an access to use a Matra Communication Minitel 1B videotext terminal like a "glass TTY" so you can UNIX with it like in the 1970's!

This should work without any modification of any configuration file on any Linux machine running `agetty` and will open a login shell on the screen of the terminal.

To use it : 

```bash
sudo ./minitel.sh ttyUSB0
```

Replace `ttyUSB0` with the name of the file in `/dev` that represent your serial port.

Confirmed working on ArchLinux and Debian.
