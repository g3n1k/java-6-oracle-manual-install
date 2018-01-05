#!/bin/bash
# create folder for jvm, we will hold all java version here
sudo mkdir -p /usr/lib/jvm/
# extract rt.jar (limit with 50MB github)
tar -zxvf rt.jar.tar.gz
mv rt.jar java-6-oracle/jre/lib/rt.jar
# copy all folder  java
sudo cp -r java-6-oracle /usr/lib/jvm/
# create alternatives link
sudo python ln.py _etc_alternatives
# install java 6 plugin for firefox 
sudo update-alternatives --install /usr/lib/mozilla/plugins/libjavaplugin.so libjavaplugin.so /usr/lib/jvm/java-6-oracle/jre/lib/amd64/libnpjp2.so 2
# create softlink in /usr/bin
sudo python ln.py _usr_bin
# test java
java --version
echo "test java plugin, open link https://www.java.com/verify/ with firefox"
exit
