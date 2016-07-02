require 'spec_helper'

describe 'midserver::service' do
  let(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

  it 'starts the midserver service ' do
    expect(chef_run).to start_service('My MID Server')
  end
end
