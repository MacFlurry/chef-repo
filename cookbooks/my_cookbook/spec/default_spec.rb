#
# Cookbook Name:: my_cookbook
# Spec:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

#require 'chefspec'
#require 'chefspec/berkshelf'
require 'spec_helper'
describe 'my_cookbook::default' do

  let(:chef_run) do
    runner = ChefSpec::ServerRunner.new
    runner.converge(described_recipe)
  end

  it 'creates a greetings file, containing the platform name' do
    chef_run.converge(described_recipe)
    expect(chef_run).to render_file('/tmp/greeting.txt').with_content('Hello!')
  end
end
