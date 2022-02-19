#!/bin/bash

if [[ ! -z $AGE_KEY_PRIVATE ]]
then
    pretty_print "Configuring AGE keys"

    mkdir -p ~/.config/sops/age
    echo $AGE_KEY_PRIVATE | base64 -d > ~/.config/sops/age/keys.txt
fi
