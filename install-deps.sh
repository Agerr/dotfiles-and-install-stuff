#!/bin/shell
sudo pacman -S xorg mesa lib32-mesa xf86-video-amdgpu vulkan-radeon lib32-vulkan-radeon libva-mesa-driver lib32-libva-mesa-driver alsa-utils pulseaudio pulseaudio-alsa
sudo pacman -S zsh zsh-completions lightdm lightdm-slick-greeter i3 alacritty dmenu rofi xdg-user-dirs xss-lock polkit-gnome gnome-keyring feh mplayer picom firefox thunar gparted deepin-calculator deepin-calendar pavucontrol lxappearance qt5ct gdb neofetch btop tldr tree unzip wget flameshot gpick dunst ttf-jetbrains-mono ttf-dejavu ttf-droid noto-fonts noto-fonts-emoji gvfs ntfs-3g
paru -S --noconfirm systemd-numlockontty numlockx i3lock-fancy-git cava autotiling nerd-fonts-jetbrains-mono-160 visual-studio-code-bin icu69-bin gitkraken spotify timeshift discord-ptb betterdiscord-installer-bin grub-customizer spicetify-cli onlyoffice-bin
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
mkdir -p ~/Source/git/
cd ~/Source/git/ && git clone --depth=1 https://github.com/adi1090x/rofi.git
cd rofi && chmod +x setup.sh
./setup.sh
sudo systemctl enable numLockOnTty.service
sudo systemctl enable lightdm.service
sudo systemctl enable cronie.service
xdg-user-dirs-update
echo "QT_QPA_PLATFORMTHEME=qt5ct" | sudo tee --append /etc/environment
