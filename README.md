# Dotfiles

🏠 - Personal Dotfiles (Managed by GNU Stow)

<img width="1280" height="536" alt="demo" src="https://github.com/user-attachments/assets/cb2eabd0-bd87-484c-b170-82cf7efec69d" />

## Stack

| | |
|---|---|
| **OS** | [Fedora Linux](https://fedoraproject.org) |
| **Compositor** | [Hyprland](https://hypr.land) or [niri](https://github.com/niri-wm/niri) |
| **Desktop shell** | [Noctalia](https://noctalia.dev) |
| **Terminal** | [kitty](https://sw.kovidgoyal.net/kitty/) |
| **Shell** | ZSH + [oh-my-zsh](https://ohmyz.sh/) |
| **Editor** | [Neovim](https://neovim.io) with [LazyVim](https://www.lazyvim.org/) |
| **CLI tools** | [eza](https://eza.rocks), [bat](https://github.com/sharkdp/bat), [fzf](https://github.com/junegunn/fzf), [zoxide](https://github.com/ajeetdsouza/zoxide), [lf](https://github.com/gokcehan/lf), [tmux](https://github.com/tmux/tmux), [cava](https://github.com/karlstav/cava) |
| **Music** | [Sone](https://github.com/lullabyX/sone) (TIDAL) |
| **Font** | FiraCode [Nerd Font](https://www.nerdfonts.com/) |

## Installation

### Requirements

- [Hyprland](https://hypr.land) v0.55+ and/or [niri](https://github.com/niri-wm/niri) v26.04+
- [Noctalia](https://noctalia.dev)
- [GNU Stow](https://www.gnu.org/software/stow/)
- [Git](https://git-scm.com)
- [zsh](https://www.zsh.org) + [oh-my-zsh](https://ohmyz.sh/) with [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) and [fast-syntax-highlighting](https://github.com/zdharma-continuum/fast-syntax-highlighting)

### Optional

- [kitty](https://sw.kovidgoyal.net/kitty/)
- [eza](https://eza.rocks)
- [bat](https://github.com/sharkdp/bat)
- [fzf](https://github.com/junegunn/fzf)
- [zoxide](https://github.com/ajeetdsouza/zoxide)
- [Nautilus](https://apps.gnome.org/Nautilus/)
- Noctalia plugins: `wallhaven`, `screen_recorder`

### Setup

```sh
git clone https://github.com/Thomas-Philippot/dotfiles ~/dotfiles
cd ~/dotfiles
stow .
```

Everything is now symlinked into `$HOME`.

## Keybinds

| Keys | Action |
|---|---|
| <kbd>SUPER</kbd> + <kbd>SPACE</kbd> | Launcher |
| <kbd>SUPER</kbd> + <kbd>S</kbd> | Control center |
| <kbd>SUPER</kbd> + <kbd>T</kbd> | Toggle light / dark |
| <kbd>SUPER</kbd> + <kbd>W</kbd> | Wallpaper browser (Wallhaven) |
| <kbd>SUPER</kbd> + <kbd>R</kbd> | Start / stop screen recording |
| <kbd>Print</kbd> / <kbd>CTRL</kbd> + <kbd>Print</kbd> | Screenshot region / fullscreen |
| <kbd>SUPER</kbd> + <kbd>ESC</kbd> | Lock |
| <kbd>CTRL</kbd> + <kbd>ALT</kbd> + <kbd>T</kbd> | Terminal |
| <kbd>SUPER</kbd> + <kbd>F</kbd> | File manager |
| <kbd>SUPER</kbd> + <kbd>C</kbd> | Close window |
| <kbd>SUPER</kbd> + <kbd>V</kbd> | Toggle floating |
| <kbd>SUPER</kbd> + <kbd>CTRL</kbd> + <kbd>F</kbd> | Fullscreen |
| <kbd>SUPER</kbd> + <kbd>←↑→↓</kbd> / <kbd>I</kbd><kbd>J</kbd><kbd>K</kbd><kbd>L</kbd> | Move focus |
| <kbd>SUPER</kbd> + <kbd>SHIFT</kbd> + <kbd>←↑→↓</kbd> / <kbd>I</kbd><kbd>J</kbd><kbd>K</kbd><kbd>L</kbd> | Move window |
| <kbd>SUPER</kbd> + <kbd>1</kbd>…<kbd>0</kbd> | Go to workspace |
| <kbd>SUPER</kbd> + <kbd>SHIFT</kbd> + <kbd>1</kbd>…<kbd>0</kbd> | Move window to workspace |
| <kbd>SUPER</kbd> + <kbd>M</kbd> | Exit compositor |

### niri only

| Keys | Action |
|---|---|
| <kbd>SUPER</kbd> + <kbd>HOME</kbd> / <kbd>END</kbd> | Focus first / last column (+ <kbd>SHIFT</kbd> to move it) |
| <kbd>SUPER</kbd> + <kbd>U</kbd> / <kbd>SUPER</kbd> + <kbd>SHIFT</kbd> + <kbd>U</kbd> | Consume into / expel from column |
| <kbd>SUPER</kbd> + <kbd>H</kbd> | Cycle column width |
| <kbd>SUPER</kbd> + <kbd>SHIFT</kbd> + <kbd>H</kbd> | Maximize column |
| <kbd>SUPER</kbd> + <kbd>P</kbd> | Tabbed column |
| <kbd>SUPER</kbd> + <kbd>TAB</kbd> | Overview |
| <kbd>SUPER</kbd> + <kbd>?</kbd> | Show all keybinds |

## Custom configs

Simply copy the `.example` files to enable or add custom uncommitted settings.

## Troubleshooting

**bat doesn't pick up the theme** — rebuild its cache:

```sh
bat cache --build
```
