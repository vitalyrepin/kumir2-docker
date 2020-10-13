#!/bin/sh

TGZ="Kumir2X-1462.tar.gz"

apt-get update
apt-get install -y x11-apps

useradd -ms /bin/bash kumir
mkdir /home/kumir/Kumir
chown kumir /home/kumir/Kumir

apt-get install -y libqtgui4 libqt4-svg libqt4-script
apt-get install -y curl
curl -k -O https://www.niisi.ru/kumir/${TGZ}

# Unpack to Kumir instead of brain-damaged path found in the tarball
mkdir /opt/kumir
tar -C /opt/kumir --strip-components=1 -xzf ${TGZ}
rm ${TGZ}

# To decrease image size
rm -rf /tmp/* /usr/share/doc/* /usr/share/info/* /var/tmp/*

