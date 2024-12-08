# My Hyprland Dotfiles
(based on [catppuccin palette](https://catppuccin.com/palette))
I cloned [this Yandex Music TUI client](https://github.com/DECE2183/yamusic-tui) and changed some icons in *ui/style/styles.go* because of incorrect display.

## Components:
- **OS**: Arch Linux 󰣇 *Optional*
- **WM**: Hyprland  
- **Wallpaper Engine**: SWWW 󰸉
- **Bar**: Waybar  
- **Menu**: Wofi/Rofi 󰍜 
- **Browser**: Zen Browser 󰈹 
- **Notification Center**: Dunst 󰂚 
- **Terminal**: Kitty  
- **Shell**: Fish with Starship  
- **Text Editor**: NeoVim  

***Notice**: If you are not Yarik, it may work incorrect :)*

## Install
- **Download components**
For example, *Arch*:
```shell
yay -S hyprland swww waybar wofi rofi zen-browser-bin dunst kitty fish starship neovim
```

- **Clone the repository**
```shell
git clone https://github.com/Perelmeshcka/.config
```

- **Download catppuccin-mocha-lavender gtk theme**
```shell
wget https://github.com/catppuccin/gtk/releases/download/v1.0.3/catppuccin-mocha-lavender-standard+default.zip
unzip catppuccin-mocha-lavender-standard+default.zip
mv catppuccin-mocha-lavender-standard+default ~/.themes/catppuccin-mocha-standard+default
```

- **Change the theme in your favourite way**
