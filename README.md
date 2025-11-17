# Dotfiles
🏠 - Personal Dotfiles (Managed by GNU Stow)

![1](https://github.com/user-attachments/assets/692a80a3-756a-4118-9350-47acc3e37710)
![2](https://github.com/user-attachments/assets/494c8923-c580-49d6-9ca7-950a8b6b06ba)
![3](https://github.com/user-attachments/assets/34735b0c-7a0e-40bf-86d4-84498e740fc3)


## Overview

- **DE**: [Hyprland](https://hyprland.com)
- **OS**: [Arch Linux](https://archlinux.org/)
- **Shell**: ZSH
  - **Framework**: [oh-my-zsh](https://ohmyz.sh/)
  - **Prompt**: [p10k](https://github.com/romkatv/powerlevel10k)
- **Applications**:
  - **Spotify**: [Spicetify](https://spicetify.app/)
  - **Discord**: [Better Discord](https://betterdiscord.app/)
- **Terminal**: [kitty](https://github.com/kovidgoyal/kitty)
- **Editor**: [Neovim](https://github.com/neovim/neovim/) (using [AstroNvim](https://github.com/AstroNvim/AstroNvim) configuration)
- **Browser**: [Firefox](https://www.mozilla.org/firefox/)
- **Fonts**: Jetbrains Mono, Fira Code Mono [Nerd Font](https://www.nerdfonts.com/)
- **Icons**:
  - **Cursor**: [Catppuccin Cursor](https://github.com/catppuccin/cursors), [Phinger Cursors](https://github.com/phisch/phinger-cursors)
- **Colorscheme**: [Catppuccin](https://github.com/catppuccin/catppuccin) Dark : Macchiato / Light : Latte
- **Keyboard Layout**: FR-fr (AZERTY)
- **System Language**: French

## Installation

### Prerequisites

- [Stow](https://www.gnu.org/software/stow/)
- [Git](https://git-scm.com)
- [Zoxide](https://github.com/ajeetdsouza/zoxide)
- [QuickShell](https://quickshell.org/)
- [Caelestia](https://aur.archlinux.org/packages/caelestia-shell)
- [wl-clipboard](https://github.com/bugaevc/wl-clipboard)

clone the repo into your `$HOME` folder and let stow do its magic !

````
git clone https://github.com/Thomas-Philippot/dotfiles
cd dotfiles
git checkout arch
stow .
``````

all the files should now be simlinked to your $HOME folder

### Theme switcher

user the <kbd>SUPER</kbd> + <kbd>T</kbd> shortcut to switch between light and dark theme

### Issues

bat might not apply the catppuccin theme at launch, because you need to rebuild it's cache.

```
bat cache --build
```
