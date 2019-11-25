$install_docker_script = <<SCRIPT
sudo yum install -y yum-utils device-mapper-persistent-data lvm2
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install -y docker-ce
sudo usermod -aG docker vagrant
sudo systemctl enable docker.service
sudo systemctl start docker.service
echo "COMPOSE_HTTP_TIMEOUT=640000" | sudo tee /etc/environment
SCRIPT
$install_docker_compose_script = <<SCRIPT
#DOCKER-COMPOSE
sudo yum install -y epel-release
sudo yum install -y python-pip python-devel
sudo pip install docker-compose
sudo yum upgrade python*
docker-compose version
SCRIPT
$install_docker_portainer_script = <<SCRIPT
#PORTAINER
if ! docker ps --format '{{.Names}}' | grep -w portainer &> /dev/null; then
  docker volume create portainer_data 
  docker run -d -p 9000:9000 --name portainer --restart always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer
fi
SCRIPT
$install_utils_script = <<SCRIPT
#UTILS
sudo yum install -y htop nload
sudo yum install -y https://centos7.iuscommunity.org/ius-release.rpm
sudo yum install -y python36u python36u-libs python36u-devel python36u-pip
sudo pip3 install requests
SCRIPT
Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  config.vm.hostname = "centos"
  #config.vm.box_version = "7.0"
  config.env.enable '.env' #BUSCA EL ARCHIVO .ENV EN LA CARPETA VAGRANT
  config.vm.network "public_network", ip: ENV['CUSTOM_IP'] #MODIFICACIÓN NECESARIA!
  config.vbguest.auto_update = true
  #config.vm.automount true
  config.vm.provision "shell", inline: $install_docker_script, privileged: true
  config.vm.provision "shell", inline: $install_docker_compose_script, privileged: true
  config.vm.provision "shell", inline: $install_docker_portainer_script, privileged: true
  config.vm.provision "shell", inline: $install_utils_script, privileged: true
  config.vm.synced_folder ENV['FOLDER_APPS'], "/home/vagrant/apps", #MODIFICACIÓN NECESARIA O CREAR CARPETA EN ESA RUTA!
    mount_options: ["uid=1000,gid=1001,fmode=666,umask=002"] #NO MODIFICAR!
  config.vm.provider "virtualbox" do |v|
    v.name = "centos_minimal"
    v.memory = 1024 #MODIFICAR A GUSTO
    v.cpus = 4 #MODIFICAR A GUSTO
  end
  
end
