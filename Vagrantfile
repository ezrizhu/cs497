Vagrant.configure("2") do |config|
  config.vm.provider :libvirt do |libvirt|
    libvirt.memory = 1024
    libvirt.cpus = 2
  end

  config.vm.define "debian" do |debian|
    debian.vm.box = "generic/debian12"
    debian.vm.provision "shell", inline: "sudo apt update && sudo apt -y install pkg-config"
    config.vm.synced_folder '.', '/vagrant', disabled: true
  end

  config.vm.define "ubuntu" do |ubuntu|
    ubuntu.vm.box = "generic/ubuntu2204"
    ubuntu.vm.provision "shell", inline: "sudo apt update && sudo apt -y install pkg-config"
    config.vm.synced_folder '.', '/vagrant', disabled: true
  end

  config.vm.define "rocky" do |rocky|
    rocky.vm.box = "generic/rocky9"
    config.vm.synced_folder '.', '/vagrant', disabled: true
  end

  config.vm.define "fedora" do |fedora|
    fedora.vm.box = "generic/fedora38"
    config.vm.synced_folder '.', '/vagrant', disabled: true
  end

  config.vm.define "alpine" do |alpine|
    alpine.vm.box = "generic/alpine318"
    alpine.vm.provision "shell", inline: "sudo apk add --update --no-cache python3 pkgconf"
    config.vm.synced_folder '.', '/vagrant', disabled: true
  end

  config.vm.define "arch" do |arch|
    arch.vm.box = "archlinux/archlinux"
    arch.vm.provision "shell", inline: "sudo pacman --noconfirm --needed -Syy python pkg-config"
    config.vm.synced_folder '.', '/vagrant', disabled: true
  end

  config.vm.define "alma" do |alma|
    alma.vm.box = "generic/alma9"
    config.vm.synced_folder '.', '/vagrant', disabled: true
  end

  config.vm.define "gentoo" do |gentoo|
    gentoo.vm.box = "generic/gentoo"
    config.vm.synced_folder '.', '/vagrant', disabled: true
  end

  config.vm.define "oracle" do |oracle|
    oracle.vm.box = "generic/oracle7"
    config.vm.synced_folder '.', '/vagrant', disabled: true
  end

  config.vm.define "centos" do |centos|
    centos.vm.box = "generic/centos7"
    config.vm.synced_folder '.', '/vagrant', disabled: true
  end

  config.vm.define "rhel" do |rhel|
    rhel.vm.box = "generic/rhel9"
    config.vm.synced_folder '.', '/vagrant', disabled: true
  end

  config.vm.provision "ansible", after: :all do |ansible|
    ansible.playbook = "playbook.yml"
  end
end
