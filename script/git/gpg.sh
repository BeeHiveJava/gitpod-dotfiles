#!/bin/bash

if [[ ! -z $OPENGPG_KEY  ]]
then
    pretty_print "Configuring git to use GPG signing"

    gpg --verbose --batch --import <(echo $OPENGPG_KEY|base64 -d)
    echo "pinentry-mode loopback" >> ~/.gnupg/gpg.conf
    git config --global user.signingKey "$OPENGPG_KEY_ID"
    git config --global commit.gpgSign "true"
    git config --global tag.forceSignAnnotated "true"
fi
