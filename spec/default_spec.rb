# encoding: utf-8
require 'spec_helper'

# Write unit tests with ChefSpec - https://github.com/sethvargo/chefspec#readme
describe 'home-server::default' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'includes the `ubuntu-base` recipe' do
    expect(chef_run).to include_recipe('ubuntu-base::default')
  end

  it 'includes the `openssh` recipe' do
    expect(chef_run).to include_recipe('openssh::default')
  end

  it 'includes the `ntp` recipe' do
    expect(chef_run).to include_recipe('ntp::default')
  end

  it 'includes the `firewall` recipe' do
    expect(chef_run).to include_recipe('firewall::default')
  end
end
