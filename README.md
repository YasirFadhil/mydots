# mydots 🧩

![Repo Size](https://img.shields.io/github/repo-size/YasirFadhil/mydots?style=flat-square)
![Last Commit](https://img.shields.io/github/last-commit/YasirFadhil/mydots?style=flat-square)
![License](https://img.shields.io/github/license/YasirFadhil/mydots?style=flat-square)

> My personal **Hyprland** configuration files and setup for a clean, fast, and productive Wayland experience using GNOME tools, Nushell, and minimal aesthetics.

---

## ✨ Features

- 🪟 **Hyprland** – Dynamic Wayland tiling window manager
- 🎨 **Fuzzel & Rofi** – App launchers with theme configs
- 🔐 **Hyprlock & Wlogout** – Lock/logout screens
- 💻 **Ghostty** – Modern GPU-accelerated terminal
- 📊 **Fastfetch** – Pretty system info in terminal
- 🧠 **Nushell + Zoxide** – Modern shell with smart navigation
- 📦 **Hyprpanel** – Custom panel powered by AGS

---

## 📁 Folder Structure

```

mydots/
├── .github/workflows       # GitHub Actions
├── fastfetch               # Fastfetch config
├── ghostty                 # Ghostty config
├── hypr                    # Hyprland config
├── nutshell                # Nushell config
├── rofi                    # Rofi launcher themes
├── wlogout                 # Wlogout buttons layout
└── hyprpanel\_config.json   # AGS Hyprpanel config

````

---


---

## 🛠️ Setup Instructions

> ⚠️ Make sure [Chaotic AUR](https://aur.chaotic.cx/) repo is already added in your `pacman.conf`.


1. Clone this repo:
   ```bash
   git clone https://github.com/YasirFadhil/mydots.git
   cd mydots
   ```


2. Run the installer script:
   ```bash
   chmod +x install.sh
   ./install.sh
   ```

3. Copy the configurations you want:
   ```bash
   cp -r hypr rofi wlogout ~/.config/
   ```

> ⚠️ Reboot or relogin to apply all changes.

---

## 📦 Dependencies

### Base (Pacman)

```bash
sudo pacman -S git gnome gnome-extra gnome-tweaks \
hyprland-git fuzzel ttf-firacode-nerd \
hyprlock fastfetch nushell zoxide ghostty
```

### AUR (via yay)

```bash
yay -S carapace-bin ags-hyprpanel-git
```

You can automate all with the `install.sh` provided.

---

## 🧠 Notes

This setup was built and tested on **EndeavourOS** with **Hyprland** and some GNOME utilities.
Feel free to fork, use, or modify any part of this configuration.

After booted into hyprland open hyprpanel dashboard on the top left screen and import the ```hyprpanel.json``` 

---
