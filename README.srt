
========================
KODI - Multimedia Center
========================

apt-get install python-software-properties pkg-config
apt-get install software-properties-common

for 13.2
sudo add-apt-repository ppa:team-xbmc/ppa
sudo apt-get update
sudo apt-get install xbmc

for 14.0
sudo add-apt-repository ppa:team-xbmc/unstable
sudo apt-get update
sudo apt-get install kodi

install plugin repositories

https://code.google.com/p/dmd-xbmc/
wget https://dmd-xbmc.googlecode.com/files/repository.dmd-xbmcv2.googlecode.com.zip

http://kodi-czsk.github.io/repository/
wget http://kodi-czsk.github.io/repository/repo/repository.kodi-czsk/repository.kodi-czsk-1.0.0.zip

usb dvb-t tuner
===============

https://tvheadend.org/projects/tvheadend/wiki/AptRepository

curl http://apt.tvheadend.org/repo.gpg.key | sudo apt-key add -
apt-add-repository -r http://apt.tvheadend.org/stable
apt-add-repository http://apt.tvheadend.org/unstable
apt-get update

apt-get update
apt-get install tvheadend
apt-get install kodi-pvr-tvheadend-hts v4l-conf v4l-utils dvb-tools w-scan

install tvb-t device firmware if necessary

tvheadend ui - http://localhost:9981/
