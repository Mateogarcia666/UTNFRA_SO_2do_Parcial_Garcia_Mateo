git clone https://github.com/Mateogarcia666/UTNFRA_SO_2do_Parcial_Garcia_Mateo.git
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
cd UTN-FRA_SO_Examenes/
cd 202406
ls -l
./script_Precondicion.sh 
source ~/.bashrc
cd
sudo apt update
# Configurar el repositorio de Docker
sudo apt-get update
sudo apt-get install     ca-certificates     curl     gnupg
# Agregar la clave de Docker GPG
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
# Configurar el repositorio
echo   "deb [arch=\"$(dpkg --print-architecture)\" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
# Instalar Docker
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
# Agregar el repositorio oficial de Ansible
sudo apt update
sudo apt install software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
# Instalar Ansible
sudo apt install ansible
cd RTA_Examen_20241116/ ls -l
ls -la
cd RTA_Examen_20241116/
ls -l
vim Punto_A.sh 
chmod +x Punto_A.sh 
./Punto_A.sh 
vim Punto_B.sh 
chmod +x Punto_B.sh 
./Punto_B.sh 
cd usr/local/bin
/usr/local/bin/
cd /usr/local/bin/
ls -l
vim garcia-AltaUser-Groups.sh
sudo vim garcia-AltaUser-Groups.sh
cd
cd RTA_Examen_20241116/
vim Punto_B.sh 
cd /usr/local/bin/
vim garcia-AltaUser-Groups.sh
sudo vim garcia-AltaUser-Groups.sh
ls -l
sudo chmod +x garcia-AltaUser-Groups.sh 
ls -l
./usr/local/bin/garcia-AltaUser-Groups.sh mateo home/mateo/UTN-FRASO_Examenes/202406/bash_script/Lista_Usuarios.txt
./garcia-AltaUser-Groups.sh mateo home/mateo/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
cd
pwd
UTN-FRA_SO_Examenes/
cd UTN-FRA_SO_Examenes/
cd 202406
cd bash_script/
ls -l
pwd
cd
cd /usr/local/bin
ls -l
./garcia-AltaUser-Groups.sh mateo /home/mateo/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
cd
cd RTA_Examen_20241116/
ls -l
vim Punto_B.sh 
vim Punto_A.sh 
vim Punto_C.sh 
cd
cd UTN-FRA_SO_Examenes/
cd 202406
cd docker
ls -l
vim index.html 
cd
cd RTA_Examen_20241116/
vim Punto_C.sh 
chmod +x Punto_C.sh 
./Punto_C.sh 
sudo systemctl restart docker
sudo systemctl start docker
sudo systemctl status docker
./Punto_C.sh 
sudo usermod -aG docker mateo
./Punto_C.sh 
sudo du -sh /var/lib/docker/*
lsblk
sudo pvs
vim Punto_A.sh 
free -h
vim Punto_A
vim Punto_A.sh 
sudo umount /var/lib/docker
sudo umount /work
sudo lvremove /dev/vg_datos/lv_docker
sudo lvremove /dev/vg_datos/lv_workareas
sudo lvremove /dev/vg_temp/lv_swap
sudo vgremove vg_datos
sudo vgremove vg_temp
sudo wipefs -a /dev/sdc
sudo wipefs -a /dev/sdd
sudo umount /dev/mapper/vg_datos-lv_docker
sudo lvchange -an /dev/vg_datos/lv_docker
sudo lvremove /dev/vg_datos/lv_docker
sudo lvremove /dev/vg_datos/lv_workareas
sudo lvremove /dev/vg_temp/lv_swap
sudo umount /dev/mapper/vg_datos-lv_docker
sudo lvchange -an /dev/vg_datos/lv_docker
sudo lvremove /dev/vg_datos/lv_docker
sudo lvremove /dev/vg_datos/lv_workareas
sudo lvremove /dev/vg_temp/lv_swap
sudo vgremove vg_datos
sudo vgremove vg_temp
sudo fdisk /dev/sdc
sudo fdisk /dev/sdd
sudo wipefs -a /dev/sdc
sudo wipefs -a /dev/sdd
sudo umount -f /dev/sdc2
sudo mount | grep /dev/sdc2
sudo umount /dev/sdc2
sudo lsof /dev/sdc2
sudo lvchange -an /dev/vg_datos/lv_docker
sudo lvchange -an /dev/vg_datos/lv_workareas
sudo lvchange -an /dev/vg_temp/lv_swap
sudo umount /dev/mapper/vg_datos-lv_docker
sudo umount /var/lib/docker/
sudo lvchange -an /dev/vg_datos/lv_docker
sudo lsof /var/lib/docker
sudo umount -l /var/lib/docker
sudo lvchange -an /dev/vg_datos/lv_docker
sudo umount /var/lib/docker
sudo lvremove /dev/vg_datos/lv_docker
lsblk
sudo umount /var/lib/docker
sudo lsof | grep /dev/vg_datos/lv_docker
sudo lvs
sudo vgs
sudo vgreduce vg_datos /dev/sdc1
sudo vgreduce vg_datos /dev/sdc2
sudo vgreduce vg_datos /dev/sdc
sudo lvremove /dev/vg_datos/lv_docker
lsbl
lsblk
sufo fdisk /dev/sdc
sudo fdisk /dev/sdc
sudo lvremove /dev/vg_datos/lv_docker
sudo lvscan
sudo vgscan
sudo pvscan
sudo lvremove /dev/vg_datos/lv_docker
sudo vgremove vg_datos
sudo vgchange -an vg_datos
sudo pvscan --uuid
sudo umount /dev/sdc2
sudo lvremove /dev/vg_datos/lv_docker
newgrp docker
sudo reboot
cd RTA_Examen_20241116/
ls -l
rm Dockerfile 
lsblk
vim Punto_A.sh 
./Punto_C.sh 
docker login
./Punto_C.sh 
ls -l
vim Punto_A.sh 
./Punto_A.sh 
sudo pvs
sudo vgs
free -h
cd
cd UTN-FRA_SO_Examenes/
ls -l
cd
ls -l
UTN-FRA_SO_Examenes/
cd UTN-FRA_SO_Examenes/
cd
cd UTN-FRA_SO_Examenes/
ls -l
cd 202406
ls -l
cd docker
ls -l
cd ..
ls -la
exit
ls -la
cd docker
cd .docker
ls -la
cd
cd RTA_Examen_20241116/
vim Punto_A.sh 
vim Punto_D.sh 
cd
/var/lib
cd /var/lib
ls -l
cd docker
sudo cd docker
cd
/usr/local/bin
cd /usr/local/bin
ls -l
vim garcia-AltaUser-Groups.sh 
cd
cd RTA_Examen_20241116/
vim Punto_A.sh 
vim Punto_C.sh 
exit
cd RTA_Examen_20241116/
vim Punto_D.sh 
chmod +x Punto_C.sh 
ls -l
chmod +x Punto_D.sh 
ls -l
cd
sudo mkdir -p /work
cd RTA_Examen_20241116/
sudo mount /dev/mapper/vg_datos-lv_workareas /work/
sudo pvs
lsblk
vim Punto_B.sh 
cd
cd UTN-FRA_SO_Examenes/
cd 202406
cd bash_script/
ls -l
cd ..
cd
usr/local/bin
cd usr/local/bin
cd usr/local/bin/
cd /usr/local/bin
vim garcia-AltaUser-Groups.sh 
sudo vim garcia-AltaUser-Groups.sh 
./garcia-AltaUser-Groups.sh 
vim garcia-AltaUser-Groups.sh 
sudo vim garcia-AltaUser-Groups.sh 
cd
cd RTA_Examen_20241116/
./Punto_C.sh 
./Punto_D.sh 
vim Punto_D.sh 
./Punto_D.sh 
vim Punto_D.sh 
cd
cd UTN-FRA_SO_Examenes/
cd 202406
cd ansible/
ls -l
cd roles
ls -l
cd 2do_parcial/
ls -la
cd tasks
ls -la
cd main.yml
cat main.yml
cd ..
ls -la
cat playbook.yml
cat README.md 
ls -la
cd ..
cd RTA_Examen_20241116/
vim Punto_D.sh 
./Punto_D.sh 
cd
sudo visudo
ip addr show
sudo ip link set docker0 up
cd RTA_Examen_20241116/
./Punto_D.sh 
cd 
cd UTN-FRA_SO_Examenes/
cd 202406
cd A
cd ansible
ls -la
cat playbook.yml
cd ..
cd .
cd
cd RTA_Examen_20241116/
ls -la
cat /tmp/2do_parcial/alumno/datos_alumno.txt
cat /tmp/2do_parcial/equipo/datos_equipo.txt
sudo cat /etc/sudoers.d/2psupervisores
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker/
lsblk
cd
ls -la
# Copiar la carpeta 202406
cp -r ~/UTN-FRA_SO_Examenes/202406 ~/UTNFRA_SO_2do_Parcial_Garcia_Mateo
cp -r ~/RTA_Examen_20241118 ~/UTNFRA_SO_2do_Parcial_Garcia_Mateo
history -a
history
