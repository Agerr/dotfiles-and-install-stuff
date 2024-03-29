#!/bin/shell
sudo pacman -S xorg mesa lib32-mesa xf86-video-amdgpu vulkan-radeon lib32-vulkan-radeon libva-mesa-driver lib32-libva-mesa-driver alsa-utils pulseaudio pulseaudio-alsa
sudo pacman -S zsh zsh-completions lightdm lightdm-slick-greeter i3 alacritty dmenu rofi xdg-user-dirs xss-lock polkit-gnome gnome-keyring feh mplayer picom firefox thunar gparted deepin-calculator deepin-calendar pavucontrol lxappearance qt5ct gdb neofetch btop tldr tree unzip wget flameshot gpick dunst ttf-jetbrains-mono-160 ttf-dejavu ttf-droid noto-fonts noto-fonts-emoji gvfs ntfs-3g
paru -S --noconfirm systemd-numlockontty numlockx i3lock-fancy-git cava autotiling nerd-fonts-jetbrains-mono visual-studio-code-bin icu69-bin gitkraken spotify timeshift discord betterdiscord-installer-bin grub-customizer spicetify-cli onlyoffice-bin
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
mkdir -p ~/.config/i3
ln -sf ~/Source/git/dotfiles-and-install-stuff/.config/i3/config ~/.config/i3/config
mkdir ~/.config/i3status
ln -sf ~/Source/git/dotfiles-and-install-stuff/.config/i3status/config ~/.config/i3status/config
ln -sf ~/Source/git/dotfiles-and-install-stuff/.Xresources ~/.Xresources
ln -s ~/Source/git/dotfiles-and-install-stuff/Wallpapers/dracula_arch.png ~/Pictures/background.png
sudo mkdir -p /usr/share/backgrounds
sudo cp ~/Source/git/dotfiles-and-install-stuff/Wallpapers/dracula_base.png /usr/share/backgrounds/background.png
sudo cp ~/Source/git/dotfiles-and-install-stuff/picom.conf /etc/xdg/picom.conf
sudo cp ~/Source/git/dotfiles-and-install-stuff/lightdm.conf /etc/lightdm/lightdm.conf
sudo cp ~/Source/git/dotfiles-and-install-stuff/slick-greeter.conf /etc/lightdm/slick-greeter.conf
ln -sf ~/Source/git/dotfiles-and-install-stuff/.config/alacritty ~/.config/alacritty
ln -sf ~/Source/git/dotfiles-and-install-stuff/.zshrc ~/.zshrc
cp ~/Source/git/dotfiles-and-install-stuff/Dracula-zsh/dracula.zsh-theme ~/.oh-my-zsh/themes/
cp -r ~/Source/git/dotfiles-and-install-stuff/Dracula-zsh/lib/ ~/.oh-my-zsh/themes/
ln -sf ~/Source/git/dotfiles-and-install-stuff/.config/dunst ~/.config/dunst
ln -sf ~/Source/git/dotfiles-and-install-stuff/.config/cava ~/.config/cava
mkdir -p ~/.config/BetterDiscord/themes
ln -sf ~/Source/git/dotfiles-and-install-stuff/.config/BetterDiscord/themes/dracula.theme.css ~/.config/BetterDiscord/themes/dracula.theme.css
sudo cp -r ~/Source/git/dotfiles-and-install-stuff/Dracula-GTK /usr/share/themes/Dracula
sudo cp -r ~/Source/git/dotfiles-and-install-stuff/Dracula-icons /usr/share/icons/
mkdir -p ~/.config/qt5ct/colors/
cp ~/Source/git/dotfiles-and-install-stuff/Dracula-qt5/Dracula.conf ~/.config/qt5ct/colors/
ln -sf ~/Source/git/dotfiles-and-install-stuff/.startup.sh ~/.startup.sh
