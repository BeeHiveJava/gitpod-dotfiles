#!/bin/bash

if [[ ! -z $SSH_KEY_PUBLIC ]] && [[ ! -z $SSH_KEY_PRIVATE ]]
then
    pretty_print "Configuring SSH keys"

    mkdir -p ~/.ssh
    echo $SSH_KEY_PUBLIC > ~/.ssh/id_ed25519.pub
    chmod 644 ~/.ssh/id_ed25519.pub

    echo $SSH_KEY_PRIVATE | base64 -d > ~/.ssh/id_ed25519
    chmod 600 ~/.ssh/id_ed25519
fi
