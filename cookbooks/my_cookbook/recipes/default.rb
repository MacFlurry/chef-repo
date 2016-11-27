#
# Cookbook Name:: my_cookbook
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
include_recipe 'chef-client'
include_recipe 'yum'
include_recipe 'ntp'
#template '/tmp/greeting.txt' do
#  variables greeting: 'Hello!'
#end

message = node['my_cookbook']['message']
Chef::Log.info("**SAYING WHAT I WAS TOLD TO SAY: #{message}")

template '/tmp/message' do
  source 'message.erb'
  variables(
    hi: 'HALLO',
    world: 'WELT',
    from: node['fqdn']
  )
end
