#!/bin/bash
apt-get install build-essential wget unzip
addgroup --system qtss
adduser --system --no-create-home --ingroup qtss qtss
mkdir /usr/local/src/DSS
cd /usr/local/src/DSS
wget http://static.macosforge.org/dss/downloads/DarwinStreamingSrvr6.0.3-Source.tar
wget http://www.brian-shaffer.com/dls/Darwin_6.0.3_patches.zip
tar -xvf DarwinStreamingSrvr6.0.3-Source.tar
unzip Darwin_6.0.3_patches.zip
patch -p0 < Patches/dss-6.0.3.patch
patch -p0 < Patches/dss-hh-20080728-1.patch

