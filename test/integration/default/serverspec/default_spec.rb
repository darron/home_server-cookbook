# encoding: utf-8
require 'spec_helper'

# Write integration tests with Serverspec - http://serverspec.org/
describe 'home-server::default' do
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
end
