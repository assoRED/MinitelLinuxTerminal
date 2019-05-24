# MinitelLinuxTerminal

This script permit to open a serial port on a Linux machine as an access to use a Matra Communication Minitel 1B videotext terminal like a "glass TTY" so you can UNIX with it like in the 1970's!

This should work without any modification of any configuration file on any Linux machine running `agetty` and will open a login shell on the screen of the terminal.

To use it : 

You need to configure the Minitel into it's 80 column serial mode at 4800 baud for this to work. Powerup the Minitel and hit the following keys : 

Fonction + T, A
Fonction + T, E
Fonction + P, 4

Then, on a Linux machine where the terminal is plugged, run this : 

```bash
sudo ./minitel.sh ttyUSB0
```

Replace `ttyUSB0` with the name of the file in `/dev` that represent your serial port.

Confirmed working on ArchLinux and Debian.


# Hardware

You will need to adapt the "Péri-Informatique" plug of the Minitel to a standard RS232 port. This cannot be done passively as the minitel doesn't comply with RS232 specifications electricly.

A simple RS-232 circuit can adapt the minitel signal to be in spec. A good example of one of them using a common MAX232 chip and a few capacitors can be found here : https://github.com/assoRED/MinitelInterface
