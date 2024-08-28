# Dotfiles
🏠 - Personal Dotfiles (Managed by GNU Stow)

#### Hyprland
![Desktop](https://github.com/user-attachments/assets/0fa018ab-9f6a-45c7-be6b-195cf79453ae)
![Nvim](https://github.com/user-attachments/assets/21c635af-aacb-461a-afa2-b1d156bad0ad)

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
- **Colorscheme**: [Catppuccin](https://github.com/catppuccin/catppuccin) Macchiato
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
stow .
``````

all the files should now be simlinked to your $HOME folder

### Issues

bat might not apply the catppuccin theme at launch, because you need to rebuild it's cache.

```
bat cache --build
```
