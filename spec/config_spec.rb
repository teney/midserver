require 'spec_helper'

template_name = '/tmp/midserver/agent/config.xml'

describe 'midserver::config' do
  let(:solo) do
    ChefSpec::SoloRunner.new do |node|
      node.set['midserver']['install_base'] = '/tmp/midserver'
    end
  end

  let(:chef_run) do
    solo.converge(described_recipe) do
      solo.resource_collection.insert(
        Chef::Resource::Service.new('My MID Server', solo.run_context))
    end
  end

  it 'creates config.xml' do
    resource = chef_run.template(template_name)
    expect(chef_run).to include_recipe('midserver::service')
    expect(chef_run).to create_template_if_missing(template_name)
    expect(resource).to notify('service[My MID Server]')
  end
end
