#!/usr/bin/env bash

apt-get update
apt-get install -y gnupg2 ruby-dev

# installing travis client needs Ruby 2. Cannot be done now
#gem install travis

# generate enough entropy for GnuPG
apt-get install -y rng-tools
rngd -r /dev/urandom
