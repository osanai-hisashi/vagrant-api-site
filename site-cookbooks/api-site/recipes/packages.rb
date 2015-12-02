#
# Cookbook Name:: api-site
# Recipe:: packages
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute


execute "apt-get update" do
  command <<-EOF
    apt-get update
  EOF
end

node['api-site']['packages'].each do |pkg|
  package "#{pkg}" do
    action :install
  end
end
