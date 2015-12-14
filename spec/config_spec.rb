require 'spec_helper'

describe 'midserver::config' do
  let(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

  it 'creates config.xml' do
    expect(chef_run).to create_template("#{node['midserver']['install_base']}/agent/config.xml")
  end
end