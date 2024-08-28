# Dotfiles
🏠 - Personal Dotfiles (Managed by GNU Stow)

![Desktop](https://github.com/user-attachments/assets/0686d249-5cc2-4bf6-8b01-275705000e6c)
![nvim](https://github.com/user-attachments/assets/b6854450-2754-47f8-b450-9a92f5c960ad)

## Overview

- **DE**: [Hyprland](https://hyprland.com)
- **OS**: [Ubuntu](https://ubuntu.com/)
- **Shell**: zsh
  - **Framework**: [oh-my-zsh](https://ohmyz.sh/)
  - **Prompt**: [p10k](https://github.com/romkatv/powerlevel10k)
- **Applications**:
  - **Spotify**: [Spicetify](https://spicetify.app/)
  - **Discord**: [Better Discord](https://betterdiscord.app/)
- **Terminal**: kitty
- **Editor**: [Neovim](https://github.com/neovim/neovim/) (using [AstroNvim](https://github.com/AstroNvim/AstroNvim) configuration)
- **Browser**: [Firefox](https://www.mozilla.org/firefox/)
- **Fonts**: Jetbrains Mono, Fira Code Mono [Nerd Font](https://www.nerdfonts.com/)
- **Icons**:
  - **Cursor**: [Catppuccin Cursor](https://github.com/catppuccin/cursors), [Phinger Cursors](https://github.com/phisch/phinger-cursors)
- **Colorscheme**: [Catppuccin](https://github.com/catppuccin/catppuccin) Macchiato
- **Keyboard Layout**: EN-us
- **System Language**: English

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
git checkout ubuntu-24
stow .
``````

all the files should now be simlinked to your $HOME folder

### Issues

bat might not apply the catppuccin theme at launch, because you need to rebuild it's cache.

```
bat cache --build
```
