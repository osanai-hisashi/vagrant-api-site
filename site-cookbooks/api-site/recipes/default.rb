#
# Cookbook Name:: api-site 
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "api-site::packages"
include_recipe "api-site::source_code"
include_recipe "api-site::proxy"
