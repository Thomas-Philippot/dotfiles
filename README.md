# Dotfiles
🏠 - Personal Dotfiles (Managed by GNU Stow)

![2](https://github.com/user-attachments/assets/30b9d042-2845-4f44-af6b-6f08b97e6383)
![3](https://github.com/user-attachments/assets/50acd44d-2567-48b7-b212-69ec60e1266f)
![4](https://github.com/user-attachments/assets/4bd232de-530b-4f45-b73d-196135a2f65a)



## Overview

- **DE**: [Hyprland](https://hyprland.com)
- **OS**: [Arch Linux](https://archlinux.org/)
- **Shell**: zsh
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
- [Ags](https://github.com/Aylur/ags)

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
