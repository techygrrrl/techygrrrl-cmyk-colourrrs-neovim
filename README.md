<h1 align="center">CMYK colourrrs</h1>

<p align="center">
  <img src="cmyk-logo.png" width="180" style="display: inline-block; width: 180px" />
</p>

<p align="center">
  <strong>CMYK colourrrs</strong> for Neovim is a dark colour theme.
</p>
<p align="center">
  by <a href="https://techygrrrl.stream">techygrrrl</a>
</p>

## Installation guide
You can install the theme with your preffered package manager:

Using [packer](https://github.com/wbthomason/packer.nvim)

```lua
use 'techygrrrl/techygrrrl-cmyk-colourrrs-neovim'
```

...or any manager you want

If you want to install it manually:

> Unix systems (mac/linux)
```bash
git clone https://github.com/techygrrrl/techygrrrl-cmyk-colourrrs-neovim \
  <your_nvim_runtime_path>
```

> Windows Powershell
```bash
git clone https://github.com/techygrrrl/techygrrrl-cmyk-colourrrs-neovim "<your_nvim_runtime_path>"
```

Enable colorscheme:

Lua:
```lua
vim.cmd [[colorscheme cmyk-colourrrs]]
```

Vim Script:
```vim
colorscheme cmyk-colourrrs
```

## Configuration
You can disable some modifications on CMYK, if you wish.

**Note**: You need to setup this before calling `vim.cmd [[colorscheme cmyk-colourrrs]]`

Configurations are inside `vim.g["cmyk-colourrrs"]`

Ex: `vim.g["cmyk-colourrrs"].enabled_plugins.feline`
| key | default |
|--|--|
| `enabled_plugins.feline` | true |

## Credits

Theme ported to Neovim by [@fadiinho](https://github.com/fadiinho)
