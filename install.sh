#! /bin/sh

if [ ! -d "$HOME/.config" ]; then
    mkdir "$HOME/.config"
    echo "Creating config dir"
fi

sudo pacman -S --needed alacritty bspwm clang dunst flameshot git mpv neovim polybar ranger rofi sxhkd stow zathura

if command -v paru >/dev/null 2>&1; then
    echo "paur is installed."
else
    git clone https://aur.archlinux.org/paru.git
    cd paru || exit
    makepkg -sic
fi
