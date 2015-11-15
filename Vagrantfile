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


  config.vm.define "centos" do |app|
    app.vm.hostname = "centos"
    app.vm.box = "centos/7"
    app.vm.network :private_network, ip: "192.168.60.5"
  end

end
