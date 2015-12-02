# -*- mode: ruby -*-
# vi: set ft=ruby :
require 'uri'

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"
$vb_gui = false
$vb_memory = 1024*2
$vb_cpus = 2

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  hostname = "api-site"
  if Vagrant.has_plugin?("vagrant-proxyconf")
    config.proxy.http     = ENV['http_proxy']
    config.proxy.https    = ENV['https_proxy']
    config.proxy.no_proxy = ENV['no_proxy']
  end
  config.vm.box = "opscode_ubuntu-15.04"
  #  config.vm.hostname = hostname
  config.vm.box_url = "http://opscode-vm-bento.s3.amazonaws.com/vagrant/virtualbox/opscode_ubuntu-15.04_chef-provisionerless.box"
  config.vm.provider "virtualbox" do |vb|
    vb.gui = $vb_gui
    vb.cpus = $vb_cpus
    vb.memory = $vb_memory
  end

  config.vm.network :forwarded_port, host: 22000, guest: 22
  config.vm.network :forwarded_port, host: 8080, guest: 80

  config.omnibus.chef_version  =  :latest
  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = [ "./cookbooks", "./site-cookbooks" , "./berks-cookbooks"]
    chef.environments_path = "./environments"
    chef.roles_path = "./roles"
    if ENV['http_proxy'] then
      url = URI.parse(ENV['http_proxy'])
      user, password = url.userinfo.split(':')
      chef.json = {
        proxy: {
          host: url.host,
          port: url.port,
          user: user,
          password: password,
        }
      }
    end
    chef.run_list = %w[
      recipe[api-site]
    ]
  end
end
