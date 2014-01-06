# encoding: utf-8
name             'home-server'
maintainer       'Darron Froese'
maintainer_email 'darron@froese.org'
license          'Apache 2.0'
description      'Installs/configures my home server'
version          '0.1.0'
recipe           'home-server::default', 'Installs/configures my home server'

depends 'apt', '2.3.4'
depends 'ubuntu-base', '0.2.0'
depends 'openssh', '1.3.2'
depends 'ntp', '1.5.4'
