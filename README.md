# dotfiles

My personal Linux configuration managed using GNU Stow.

This repository defines a reproducible user environment across systems, including shell, editor, terminal, and window manager configurations.

---

## Overview

Configurations are organized into modular packages:

- `zsh/` — shell configuration and aliases
- `nvim/` — Neovim setup and plugins
- `tmux/` — terminal multiplexer configuration
- `kitty/` — terminal emulator configuration
- `git/` — global git settings and aliases
- `xorg/` — X11 / window system configuration
- `keymaps/` — custom keybindings
- `bin/` — utility scripts
- `fonts/` — font management
- `awesome/` — window manager configuration

Each module is independent and can be installed selectively.

---

## Installation

This setup uses GNU Stow to manage symlinks.

```bash
git clone https://github.com/diother/dotfiles ~/dotfiles
cd ~/dotfiles
stow zsh nvim tmux git
```

Or install everything:

```bash
stow */
```

---

## Design Goals

- Keep configuration modular and composable
- Avoid monolithic “all-in-one” dotfile dumps
- Make system setup reproducible across machines
- Minimize manual environment setup

---

## Notes

This repository reflects my daily development environment for systems programming and software development work.
