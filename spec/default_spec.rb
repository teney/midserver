#
# Cookbook Name:: apache-test
# Spec:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'midserver::default' do
  let(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

  it 'include the `install` recipe' do
    expect(chef_run).to include_recipe('midserver::install')
  end 

  it 'include the `config` recipe' do
    expect(chef_run).to include_recipe('midserver::config')
  end 

  it 'include the `service` recipe' do
    expect(chef_run).to include_recipe('midserver::service')
  end 
end
