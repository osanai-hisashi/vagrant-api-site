#
# Cookbook Name:: api-site
# Recipe:: source_code
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute

git "#{node['api-site']['deploy_dir']}/api-site" do
  repository node['api-site']['repository']
  reference node['api-site']['branch']
  action :checkout
  enable_submodules true
  user node['api-site']['user']
  group node['api-site']['group']
end

link "/var/www/html/api-site" do
  to "#{node['api-site']['deploy_dir']}/api-site"
end
