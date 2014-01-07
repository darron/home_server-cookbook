home_server Cookbook
=================

Requirements
------------

### Platform:

    Ubuntu 12.04LTS
    Ubuntu 13.04
    Ubuntu 13.10

### Cookbooks:

    apt
    ubuntu_base
    openssh
    ntp
    firewall
    sudo

Attributes
----------

[Take a look here.](https://github.com/darron/home_server-cookbook/blob/master/attributes/default.rb)

Recipes
-------

### home_server::default

This configures my home server.

### TODO:

    Allow SSH Env vars to persist - for ssh-agent on remote box
    Dynamic DNS Registration
    SMTP with Relayhost.
    rkhunter
    fail2ban or denyhosts w/whitelisting
    Internal DHCP Server
    Caching DNS server and 1 internal zone.
    NAT for Internal network.
    Papertrail Integration

If I have time:

    2 Factor Auth
    netatalk
    OpenVPN
    Plex

### Done:

Basic Setup
Firewall
OpenSSH Configuration Tweaks
NTP
Sudo for my user.

Testing
-------

[![Build Status](https://travis-ci.org/darron/home_server-cookbook.png?branch=master)](https://travis-ci.org/darron/home_server-cookbook)

The cookbook provides the following Rake tasks for testing:

    rake build                        # Build AMI using Packer
    rake integration                  # Alias for kitchen:all
    rake kitchen:all                  # Run all test instances
    rake kitchen:default-ubuntu-1204  # Run default-ubuntu-1204 test instance
    rake kitchen:default-ubuntu-1304  # Run default-ubuntu-1304 test instance
    rake kitchen:default-ubuntu-1310  # Run default-ubuntu-1310 test instance
    rake lint                         # Lint Chef cookbooks
    rake rubocop                      # Run rubocop tests
    rake spec                         # Run ChefSpec examples
    rake tailor                       # Run tailor tests
    rake taste                        # Run taste tests
    rake test                         # Run all tests

License and Author
------------------

Author:: Darron Froese (darron@froese.org)

Copyright:: 2014, Darron Froese

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

Contributing
------------

We welcome contributed improvements and bug fixes via the usual workflow:

1. Fork this repository
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new pull request
