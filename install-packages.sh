#Update repositories
pacman -Syyu  --noconfirm 

#################################################
#	Daily and personal use			#
#################################################

pacman -S firefox chromium brave nss  --noconfirm 
pacman -S xclip --noconfirm

### GPU 
# pacman -S nvidia  --noconfirm 
# pacman -S nvidia-utils org-server-devel opencl-nvidia --noconfirm 
# echo "blacklist nouveau" >> /usr/lib/modprobe.d/nvidia.conf
# alacritty requires gpu access
# pacman -S alacritty --noconfirm

### GPU 

pacman -S zsh --noconfirm
chsh -s /usr/bin/zsh
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
pacman -S flatpak --noconfirm
pacman -S polybar --noconfirm
pacman -S pulseaudio pavucontroli --noconfirm
pacman -S deepin-screenshot --noconfirm
pacman -S xxs-lock --noconfirm
pacman -S okular --noconfirm
pacman -S discord --noconfirm
#################################################
#		qiip				#
#################################################

pacman -S jdk8-openjdk intellij-idea-community-edition  --noconfirm 
pacman -S dbeaver --noconfirm
pacman -S docker --noconfirm
### docker user configuration
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker 
###

pacman -S postgresql --noconfirm
pacman -S sbt --noconfirm

pip install localstack awscli-local docker-compose

##### AUR packages #######
cd ~/AUR/slack-desktop
git pull origin
makepkg -si
cd ~
