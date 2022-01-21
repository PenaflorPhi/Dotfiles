#! /bin/sh

# Install Paru
git clone https://aur.archlinux.org/paru
cd paru
makepkg -sic
cd
rm -rfv paru

echo 'Success !'

mkdir ~/.config ~/Pictures ~/Pictures/Feh

# Basic Stuff
paru -S --needed xorg xorg-xinit numlockx htop wget bash-completion reflector wget
paru -S --needed systemd-numlockontty


# Intall WM (BSPWM)
paru -S --needed bspwm sxhkd
paru -S --needed alacritty-ligatures-git alacritty-themes ranger 
paru -S --needed polybar dunst rofi
paru -S --needed picom-ibhagwan-git


cp -v ~/Dotfiles/config/* ~/.config/
cp -v ~/Dotfiles/bashrc ~/.bashrc
cp -v ~/Dotfiles/fehbg ~/.fehbg
cp -v ~/Dotfiles/xinitrc ~/.xinitrc

chmod +x ~/.config/bspwm/bspwmrc
chmod +x ~/.config/rofi/launcher.sh
chmod +x ~/.config/dunst/sounds.sh
chmod +x ~/.config/ranger/scope.sh
chmod +x ~/.config/scripts/hosts.sh
chmod +x ~/.config/scripts/joplin.sh
chmod +x ~/.config/qbittorrent
chmod +x ~/.fehbg

# Enviroment
paru -S --needed kvantum qt5ct qt6ct lxapperance-gtk3

# Install Audio
paru -S --needed pulseaudio pavucontrol pamixer 
pulseaudio --check
pulseaudio -D

# Install Fonts
paru -S --needed noto-fonts noto-fonts-cjk noto-fonts-extra ttf-jetbrains-mono ttf-dejavu 
paru -S --needed noto-fonts-emoji-apple apple-fonts nerd-fonts-jetbrains-mono
git clone https://github.com/PenaflorPhi/SFMono-Nerd-Font-Ligaturized

# Utilities
paru -S --needed mpv feh flameshot xcolor

# Browsers
paru -S --needed firefox chromium

# TeX
# paru -S --needed texinfo texlive-bibtexextra texlive-bin texlive-core texlive-fontsextra texlive-latexextra

# Zathura
paru -S --needed zathura zathura-cb zathura-djvu zathura-pdf-mupdf

# Ranger Previews & Icons
paru -S --needed file python-chardet libcaca ueberzug highlight bat python-pygments
paru -S --needed atool libarchive unrar p7zip tar unzip sed
paru -S --needed lynx
paru -S --needed python-pdf2image poppler djvulibre odt2txt
paru -S --needed transmission-cli
paru -S --needed ffmpeg ffmpegthumbnailer imagemagick mediainfo
paru -S --needed python-bidi fontforge

git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons
echo "default_linemode devicons" >> $HOME/.config/ranger/rc.conf


# Neovim
paru -S --needed xsel python python-pip stylua-bin prettier python-black
pip install pynvim 


