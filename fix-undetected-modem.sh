#!/bin/sh

echo "Let me fix this problem for you, relax!"
cd
cd Downloads
wget http://www.draisberghof.de/usb_modeswitch/usb-modeswitch-2.5.2.tar.bz2
wget http://www.draisberghof.de/usb_modeswitch/usb-modeswitch-data-20170806.tar.bz2
tar -xvf usb-modeswitch-2.5.2.tar.bz2
tar -xvf usb-modeswitch-data-20170806.tar.bz2
cd usb-modeswitch-2.5.2
sudo apt-get -y install libusb-1.0.0-dev
sudo apt-get -y install build-essential
sudo make install
cd ..
cd usb-modeswitch-data-20170806
sudo make files-install
echo "Restart your machine, and test it."
