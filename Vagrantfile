#SEE: https://stackoverflow.com/questions/43183277/vagrant-multiple-playbooks-for-ansible-provisioner

Vagrant.configure("2") do |config|
  config.vm.network "forwarded_port", guest: 80, host: 80
  config.vm.network "forwarded_port", guest: 8080, host: 8080

=begin
  config.vm.provision "ansible" do |ansible|
    #BASIC SETUP - provisions a server with various software, groups/users and shibboleth
    ansible.playbook = "vireo4.yml"
  end
=end
=begin
  config.vm.provision "ansible" do |ansible|
    #MIGRATION PREP - Creates a copy of a vireo3 database and data files on vireo4
    #Clears out the vireo4 database after saving a backup and custom settings
    ansible.playbook = "migration.yml"
  end
=end
=begin
  config.vm.provision "ansible" do |ansible|
    #Brings in migration code only so utilities can be run
    ansible.playbook = "migration_code_only.yml"
  end
=end
=begin
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "site_replication.yml"
  end
=end



  config.vm.define :vireo4 do |vireo4|

    vireo4.vm.provider :virtualbox do |vb, override|
      override.vm.box = "gbailey/amzn2"
      #override.vm.box = "ubuntu/bionic64"  #18.04

      #vb.gui = true
      vb.memory = 4096
      #vb.memory = 8192
      #vb.cpus = 2

      # Forward ports
      #override.vm.network "forwarded_port", guest: 80, host: 80
      #override.vm.network "forwarded_port", guest: 8080, host: 8080
    end
  end

end


