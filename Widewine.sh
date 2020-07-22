#!/bin/bash
# Credits : https://www.andreafortuna.org/2019/09/24/how-to-install-latest-widevine-plugin-on-chromium/
LATEST=`curl https://dl.google.com/widevine-cdm/current.txt`
wget https://dl.google.com/widevine-cdm/$LATEST-linux-x64.zip
unzip $LATEST-linux-x64.zip
sudo mkdir /usr/lib/chromium
sudo mv libwidevinecdm.so /usr/lib/chromium
sudo chmod 644 /usr/lib/chromium/libwidevinecdm.so
