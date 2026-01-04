Vagrant.configure("2") do |config|

  # Nombre de la Imagen utilizada
  config.vm.box = "ubuntu/focal64"

  # Configuración de la máquina virutal
  config.vm.hostname = "Pablo"

  # Redireccionamos los puertos de la máquina virtual y el host.
  config.vm.network "forwarded_port", guest: 80, host: 8080     #APP
  config.vm.network "forwarded_port", guest: 9090, host: 9090   #PROMETEHUS
  config.vm.network "forwarded_port", guest: 3000, host: 3000   #GRAFANA
  config.vm.network "forwarded_port", guest: 9100, host: 9100   #NODE EXPORTER


  # Configuramos el provider para virtual box y sus propiedades
  config.vm.provider "virtualbox" do |vb|
    vb.name = "AppCalculadora"
    vb.memory = "4096"
    vb.cpus = 2
  end

  # Configuramos para que cargue el archivo bootstrap
  config.vm.provision "shell", path: "bootstrap.sh"

end