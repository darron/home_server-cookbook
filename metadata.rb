# encoding: utf-8
name             'home-server'
maintainer       'Darron Froese'
maintainer_email 'darron@froese.org'
license          'Apache 2.0'
description      'Installs/configures my home server'
version          '0.1.0'
recipe           'home-server::default', 'Installs/configures my home server'

depends 'apt'
depends 'ubuntu-base'
depends 'openssh'
depends 'ntp'
