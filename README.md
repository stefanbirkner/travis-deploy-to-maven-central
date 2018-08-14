# Deploy to Maven Central from Travis CI

[![Build Status](https://travis-ci.com/stefanbirkner/travis-deploy-to-maven-central.svg?branch=master)](https://travis-ci.com/stefanbirkner/travis-deploy-to-maven-central)

This is an example repository that demonstrates how a library can be
automatically published to [Maven Central](https://search.maven.org/) using
[Travis CI](https://travis-ci.com).

This repository is published under the
[MIT license](http://opensource.org/licenses/MIT). Feel free to copy whatever
is useful for you.


## Sources

This repository is built on my experience with publishing libraries to Maven
Central and Nathan Fischer's fantastic walkthrough ["Complete guide to
continuous deployment to maven central from Travis CI"](http://www.debonair.io/post/maven-cd/).


## Prerequisites

You need [GnuPG 2.x](https://gnupg.org/) for signing the artifacts and the
[Travis Client](https://github.com/travis-ci/travis.rb#readme) for encrypting
secrets. If you don't have them on your local machine then you can use a VM.
This repository supports [Vagrant](https://www.vagrantup.com/). With

    vagrant up

you can start a VM with the necessary tools.


## Create GPG keys

Artifacts that are uploaded to Maven Central must be signed. Therefore you need
GPG keys. Create your GPG keys with

    gpg --generate-key

Export your public and private key

    gpg --export --armor someone@somewhere > ci/signingkey.asc
    gpg --export-secret-keys --armor someone@somewhere >> ci/signingkey.asc
