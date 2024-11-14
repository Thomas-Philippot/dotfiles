#!/usr/bin/env zsh

source ~/.zshrc

entries="Dark\nLight"
source='source = ~/.config/hypr/themes/'

selected=$(echo -e $entries|rofi -dmenu $2 -theme ~/.config/rofi/theme.rasi)

case $selected in
  Dark)
    # GTK
    gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
    gsettings set org.gnome.desktop.interface gtk-theme 'catppuccin-macchiato-blue-standard+default'
    cp ~/.themes/catppuccin-macchiato-blue-standard+default/gtk-4.0/gtk.css ~/.config/gtk-4.0/gtk.css
    cp ~/.themes/catppuccin-macchiato-blue-standard+default/gtk-4.0/gtk-dark.css ~/.config/gtk-4.0/gtk-dark.css
    # ROFI
    cp ~/.config/rofi/colors/macchiato.rasi ~/.config/rofi/colors/theme.rasi
    # HYPRLAND + HYPRLOCK
    cp ~/.config/hypr/assets/images/lock-macchiato.png ~/.config/hypr/assets/images/lock-background.png
    cp ~/.config/hypr/themes/macchiato.conf ~/.config/hypr/conf.d/theme.conf
    # HYPRPAPER
    hyprctl hyprpaper wallpaper "DP-3,~/.config/hypr/assets/images/wall-macchiato.png"
    cp ~/.config/hypr/assets/images/wall-macchiato.png ~/.config/hypr/assets/images/wallpaper.png
    # HYPRPANEL
    ags -r "useTheme('$HOME/.config/hypr/themes/hyprpanel_macchiato.json')" > /dev/null
    # KITTY + ZSH + NVIM
    kitty +kitten themes --reload-in=all Catppuccin-Macchiato
    fast-theme 'XDG:catppuccin-macchiato' > /dev/null
    sed -i '25s/latte/macchiato/' ~/.config/nvim/init.lua
    # BTOP
    cp ~/.config/btop/themes/catppuccin_macchiato.theme ~/.config/btop/themes/catppuccin.theme
    # Zathura
    cp ~/.config/zathura/themes/catppuccin-macchiato ~/.config/zathura/theme
    # SPOTIFY
    spicetify config color_scheme macchiato && spicetify apply
    # OBS
    sed -i 's/^Theme=.*/Theme=com.obsproject.Catppuccin.Macchiato/' ~/.config/obs-studio/global.ini
    ;;
  Light)
    # GTK
    gsettings set org.gnome.desktop.interface color-scheme 'prefer-light'
    gsettings set org.gnome.desktop.interface gtk-theme 'catppuccin-latte-blue-standard+default'
    cp ~/.themes/catppuccin-latte-blue-standard+default/gtk-4.0/gtk.css ~/.config/gtk-4.0/gtk.css
    cp ~/.themes/catppuccin-latte-blue-standard+default/gtk-4.0/gtk-dark.css ~/.config/gtk-4.0/gtk-dark.css
    # ROFI
    cp ~/.config/rofi/colors/latte.rasi ~/.config/rofi/colors/theme.rasi
    # HYPRLAND + HYPRLOCK
    cp ~/.config/hypr/themes/latte.conf ~/.config/hypr/conf.d/theme.conf
    cp ~/.config/hypr/assets/images/lock-latte.png ~/.config/hypr/assets/images/lock-background.png
    # HYPRPAPER
    hyprctl hyprpaper wallpaper "DP-3,~/.config/hypr/assets/images/wall-latte.png"
    cp ~/.config/hypr/assets/images/wall-latte.png ~/.config/hypr/assets/images/wallpaper.png
    # HYPRPANEL
    ags -r "useTheme('$HOME/.config/hypr/themes/hyprpanel_latte.json')" > /dev/null
    # KITTY + ZSH + NVIM
    kitty +kitten themes --reload-in=all Catppuccin-Latte
    fast-theme 'XDG:catppuccin-latte' > /dev/null
    sed -i '25s/macchiato/latte/' ~/.config/nvim/init.lua
    # BTOP
    cp ~/.config/btop/themes/catppuccin_latte.theme ~/.config/btop/themes/catppuccin.theme
    # Zathura
    cp ~/.config/zathura/themes/catppuccin-latte ~/.config/zathura/theme
    # SPOTIFY
    spicetify config color_scheme latte && spicetify apply
    # OBS
    sed -i 's/^Theme=.*/Theme=com.obsproject.Catppuccin.Latte/' ~/.config/obs-studio/global.ini
    ;;
esac
