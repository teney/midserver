#
# Cookbook Name:: apache-test
# Spec:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'midserver::install' do
  let(:chef_run) do
    ChefSpec::SoloRunner.new do |node|
      node.set['midserver']['install_base'] = '/tmp/midserver'
      node.set['midserver']['zipfile'] = '/tmp/midserver/sncmid.zip'
    end.converge(described_recipe)
  end

  it 'creates the install directory' do
    expect(chef_run).to create_directory('/tmp/midserver')
  end

  it 'creates the download zip' do
    expect(chef_run).to create_remote_file('/tmp/midserver/sncmid.zip')
  end

  it 'extracts the tarball' do
    expect(chef_run).to run_execute('unzip /tmp/midserver/sncmid.zip')
  end
end
