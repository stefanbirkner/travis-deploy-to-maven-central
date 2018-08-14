#!/usr/bin/env bash

apt-get update
# travis cannot be installed without gcc and make
apt-get install -y gcc make ruby-dev

gem install travis

# generate enough entropy for GnuPG
apt-get install -y rng-tools
rngd -r /dev/urandom
