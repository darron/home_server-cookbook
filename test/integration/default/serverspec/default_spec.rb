# encoding: utf-8
require 'spec_helper'

# Write integration tests with Serverspec - http://serverspec.org/
describe 'home_server::default' do
  describe service('ssh') do
    it { should be_enabled }
  end

  describe service('ssh') do
    it { should be_running }
  end

  describe service('ntp') do
    it { should be_enabled }
  end

  describe service('ntp') do
    it { should be_running }
  end

  describe iptables do
    it { should have_rule('-p tcp -m tcp --dport 22 -j ACCEPT').with_table('filter').with_chain('ufw-user-input') }
  end
end
