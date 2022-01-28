#!/bin/bash

pretty_print "Install required packages for Projector"
sudo apt-get install --yes \
    libxext6 \
    libxrender1 \
    libxtst6 \
    libfreetype6 \
    libxi6

pretty_print "Install projector-installer"
pip3 install projector-installer --user

pretty_print "Install Rider"
projector ide autoinstall \
    --config-name "rider" \
    --ide-name "Rider 2021.3.2"
