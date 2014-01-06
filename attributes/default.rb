# encoding: utf-8
#
# Cookbook Name:: home-server
# Attributes:: default
#
# Copyright (C) 2014, Darron Froese <darron@froese.org>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# OpenSSH

default['openssh']['client']['host'] = '*'
default['openssh']['server']['permit_root_login'] = 'no'
default['openssh']['server']['authorized_keys_file'] = '%h/.ssh/authorized_keys'
default['openssh']['server']['use_p_a_m'] = 'yes'
default['openssh']['server']['allow_agent_forwarding'] = 'yes'
default['openssh']['server']['allow_tcp_forwarding'] = 'yes'
default['openssh']['server']['x11_forwarding'] = 'yes'
default['openssh']['server']['x11_display_offset'] = '10'
default['openssh']['server']['t_c_p_keep_alive'] = 'yes'
default['openssh']['server']['use_dns'] = 'no'
default['openssh']['server']['subsystem'] =        'sftp        /usr/libexec/sftp-server'
default['openssh']['server']['password_authentication'] = 'no'
default['openssh']['server']['permit_empty_passwords'] = 'yes'
