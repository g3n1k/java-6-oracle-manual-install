#!/bin/bash
sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/jdk1.8.*/bin/java 2
sudo update-alternatives --install /usr/bin/javac javac /usr/lib/jvm/jdk1.8.*/bin/javac 2
sudo update-alternatives --config java
exit
