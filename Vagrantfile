VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.ssh.forward_agent = true
  
  VAGRANT_JSON = JSON.parse(Pathname(__FILE__).dirname.join('nodes', 'vagrant.json').read)

  config.vm.provision :chef_solo, run: 'always' do |chef|
   chef.cookbooks_path = ["site-cookbooks", "cookbooks"]
   chef.roles_path = "roles"
   chef.data_bags_path = "data_bags"
   chef.provisioning_path = "/tmp/vagrant-chef"

   # You may also specify custom JSON attributes:
   chef.run_list = VAGRANT_JSON.delete('run_list')
   chef.json = VAGRANT_JSON
  end
end
