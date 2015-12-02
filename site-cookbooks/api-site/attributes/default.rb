# Cookbook Name:: api-site
# Attributes:: default
#
# Copyright 2010, Opscode, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
#

default['api-site']['user'] = "vagrant"
default['api-site']['group'] = "vagrant"

default['api-site']['repository'] = "https://github.com/openstack/api-site.git"
default['api-site']['branch'] = "master"
default['api-site']['deploy_dir'] = "/home/vagrant"

default['api-site']['packages'] = %w[
  "git"
  "maven"
  "python"
  "python-pip"
  "python-tox"
  "python-dev"
  "libxml2-dev"
  "libxslt-dev"
  "gettext"
  "graphviz"
  "apache2"
  "git-review"
]
