VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.ssh.insert_key = false

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "1024"] end

  config.vm.define "ubuntu" do |app|
    app.vm.hostname = "ubuntu14"
    app.vm.box = "ubuntu/trusty64"
    app.vm.network :private_network, ip: "192.168.60.4"
  end

  # Application server 2.
  # config.vm.define "client01" do |app|
  #   app.vm.hostname = "centos65"
  #   app.vm.box = "puphpet/centos65-x64"
  #   app.vm.network :private_network, ip: "192.168.60.5"
  # end

end
