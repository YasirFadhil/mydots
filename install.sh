#!/bin/bash

# -------------------------
# mydots: Hyprland setup
# Author: Yasir Fadhil
# -------------------------

GREEN='\033[0;32m'
NC='\033[0m'

echo -e "${GREEN}🔧 Installing all dependencies for mydots...${NC}"

# Check yay
if ! command -v yay &> /dev/null; then
    echo -e "${GREEN}➡️  yay not found. Installing yay...${NC}"
    sudo pacman -S --needed base-devel git
    git clone https://aur.archlinux.org/yay.git
    cd yay && makepkg -si && cd ..
fi

# Base dependencies (official repos)
echo -e "${GREEN}📦 Installing base dependencies via pacman...${NC}"
sudo pacman -S --needed \
    git gnome gnome-extra gnome-tweaks \
    hyprland-git fuzzel ttf-firacode-nerd \
    hyprlock fastfetch nushell zoxide ghostty

# AUR packages
echo -e "${GREEN}📦 Installing AUR packages via yay...${NC}"
yay -S --needed carapace-bin ags-hyprpanel-git

echo -e "${GREEN}✅ Done! All dependencies installed.${NC}"
