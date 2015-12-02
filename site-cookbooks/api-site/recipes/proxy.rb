#
# Cookbook Name:: api-site
# Recipe:: proxy
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

if node['proxy'] then
  directory "/home/#{node['api-site']['user']}/.m2" do
    owner node['api-site']['user']
    group node['api-site']['group']
    mode "0755"
    action :create
  end

  template '.m2/settings.xml' do
    group node['api-site']['group']
    owner  node['api-site']['user']
    path   "/home/#{node['api-site']['user']}/.m2/settings.xml"
    source "m2_settings.xml.erb"
  end
end
