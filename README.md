# ⚡ Neovim Dotfiles

A lightweight, keyboard-driven Neovim setup built for daily programming.

The goal of this configuration is to stay minimal while providing the essential features of a modern IDE: project navigation, fuzzy finding, LSP support, diagnostics, and terminal integration.


## ✨ Features
* 🚀 Fast startup with **lazy.nvim**
* 🌳 File explorer with **nvim-tree**
* 📑 Buffer tabs with **bufferline**
* 🔍 Fast file search with **fzf**
* 🔎 Project-wide text search with **ripgrep**
* 🐍 Python LSP powered by **basedpyright**
* 🖥️ Integrated terminal workflow
* ↩️ Persistent undo history
* ⌨️ Keyboard-first navigation

## 🚀 Installation

```bash
git clone https://github.com/Chewrs/nvim-config.git ~/.config/nvim
nvim
```

### 🛠 Requirements

* Neovim 0.12+
* Git
* fzf
* ripgrep
* basedpyright
* Python

## 📦 Plugins

| Plugin | Purpose |
| :--- | :--- |
| lazy.nvim | Plugin manager |
| nvim-tree.nvim | File explorer |
| bufferline.nvim | Buffer tabs |
| fzf | Fuzzy finder engine |
| fzf.vim | File and text search commands |
| mason.nvim | LSP installer and manager |
| nvim-lspconfig | Language Server Protocol support |


## ⌨️ Keybindings

 **Leader Key**

`<leader>` = `Space`

| Key | Action |
| :--- | :--- |
| `<leader> + Backtick` | Open workspace |
| `jk` | Exit insert mode |
| `<leader> + s` | Save file |
| `<leader> + wq` | Save and quit all |
| `<leader> + q` | Quit all |
| `<leader> + '` | Toggle file tree |
| `<leader> + .` | Switch window |
| `<leader> + ff` | Find files |
| `<leader> + fg` | Search text in project |
| `<leader> + h` | Previous buffer |
| `<leader> + l` | Next buffer |
| `<leader> + d` | Delete without yanking |
| `<leader> + k` | Show diagnostic |
| `gd` | Go to definition |
| `K` | Show hover documentation |
