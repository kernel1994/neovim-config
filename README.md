# neovim-config
My Neovim config

Use [LazyVim Starter](https://github.com/LazyVim/starter) template from [LazyVim](https://github.com/LazyVim/LazyVim).

Neovim version >= 0.10.0 (only set clipboard if not in ssh, to make sure the OSC 52 integration works automatically. Requires Neovim >= 0.10.0)

# Installation
see also: http://www.lazyvim.org/installation

Make a backup of your current Neovim files:
```bash
# required
mv ~/.config/nvim{,.bak}

# optional but recommended
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```
