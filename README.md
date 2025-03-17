# My Dev Environment Setup 🚀

Welcome to my personal configuration repository! This repo includes custom setups for:

- **Zsh** with [Oh My Zsh](https://ohmyz.sh/) 🎉
- **Neovim** powered by [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim) ✨
- **tmux** for terminal multiplexing 🖥️
- **Kitty Terminal** with my personalized configuration 🐱

---

## Table of Contents
- [Overview](#overview)
- [Zsh with Oh My Zsh](#zsh-with-oh-my-zsh)
- [Neovim (kickstart.nvim)](#neovim-kickstartnvim)
- [tmux Configuration](#tmux-configuration)
- [Kitty Terminal Setup](#kitty-terminal-setup)
- [Installation](#installation)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

---

## Overview

This repository contains all the configuration files I use to create a highly productive and personalized development environment. Each section of the repo is dedicated to a particular tool or application, so feel free to pick and choose parts that work best for you. Enjoy the streamlined setup and happy coding! 😊

---

## Zsh with Oh My Zsh 🎉

My [Zsh](https://www.zsh.org/) configuration leverages the power of [Oh My Zsh](https://ohmyz.sh/) for a flexible and powerful command line experience. Key features include:

- **Custom Plugins & Themes:** Enhance your terminal look and feel.
- **Aliases and Shortcuts:** Quickly navigate and manage files.
- **Auto-completion & Syntax Highlighting:** Boost your efficiency.

*Installation Tip:*  
After cloning the repo, symlink the `.zshrc` file to your home directory or merge its contents with your existing configuration.

---

## Neovim (kickstart.nvim) ✨

I use Neovim with the [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim) setup as a starting point for a modern and lightweight coding experience. This configuration provides:

- **Essential Plugins Pre-Configured:** Jumpstart your workflow without the overhead.
- **Custom Keybindings:** Streamline navigation and code editing.
- **LSP and Autocompletion Integration:** Improve code quality and speed.

*Installation Tip:*  
Clone the repo and place the Neovim configuration in your `~/.config/nvim/` directory. Open Neovim and run `:PackerSync` to install/update plugins.

---

## tmux Configuration 🖥️

My tmux configuration is tailored for efficient terminal management:

- **Custom Keybindings:** Easily split panes and navigate sessions.
- **Status Bar Customization:** Get a quick glance at system stats and session information.
- **Session Management:** Create, kill, and switch between sessions with ease.

*Installation Tip:*  
Copy the `.tmux.conf` file to your home directory and reload tmux with `tmux source-file ~/.tmux.conf`.

---

## Kitty Terminal Setup 🐱

The Kitty terminal configuration in this repo is designed for performance and aesthetics:

- **Font and Color Customizations:** Enhance readability and visual appeal.
- **Keyboard Shortcuts:** Speed up navigation and workflow.
- **Layout Tweaks:** Optimize the terminal for prolonged coding sessions.

*Installation Tip:*  
Place the kitty configuration file (typically `kitty.conf`) in your Kitty config directory (usually `~/.config/kitty/`).

---

## Installation 💻

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/scriptwalle/editor-config.git
   cd editor-config
