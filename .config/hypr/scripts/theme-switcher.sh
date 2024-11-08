#!/usr/bin/env zsh

source ~/.zshrc

entries="Macchiato\nLatte"
source='source = ~/.config/hypr/themes/'

selected=$(echo -e $entries|rofi -dmenu $2 -theme ~/.config/rofi/theme.rasi)

case $selected in
  Macchiato)
    # GTK
    gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
    gsettings set org.gnome.desktop.interface gtk-theme 'catppuccin-macchiato-blue-standard+default'
    cp ~/.themes/catppuccin-macchiato-blue-standard+default/gtk-4.0/gtk.css ~/.config/gtk-4.0/gtk.css
    cp ~/.themes/catppuccin-macchiato-blue-standard+default/gtk-4.0/gtk-dark.css ~/.config/gtk-4.0/gtk-dark.css
    # ROFI
    cp ~/.config/rofi/colors/macchiato.rasi ~/.config/rofi/colors/theme.rasi
    # HYPRLAND + HYPRLOCK
    cp ~/.config/hypr/themes/macchiato.conf ~/.config/hypr/conf.d/theme.conf
    # HYPRPANEL
    ags -r "useTheme('$HOME/.config/ags/themes/catppuccin_macchiato.json')" > /dev/null
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
  Latte)
    # GTK
    gsettings set org.gnome.desktop.interface color-scheme 'prefer-light'
    gsettings set org.gnome.desktop.interface gtk-theme 'catppuccin-latte-blue-standard+default'
    cp ~/.themes/catppuccin-latte-blue-standard+default/gtk-4.0/gtk.css ~/.config/gtk-4.0/gtk.css
    cp ~/.themes/catppuccin-latte-blue-standard+default/gtk-4.0/gtk-dark.css ~/.config/gtk-4.0/gtk-dark.css
    # ROFI
    cp ~/.config/rofi/colors/latte.rasi ~/.config/rofi/colors/theme.rasi
    # HYPRLAND + HYPRLOCK
    cp ~/.config/hypr/themes/latte.conf ~/.config/hypr/conf.d/theme.conf
    # HYPRPANEL
    ags -r "useTheme('$HOME/.config/ags/themes/catppuccin_latte.json')" > /dev/null
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
