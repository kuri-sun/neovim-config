# Neovim config

## Location 
 - Mac, Linux <br />
  HOME/.config/nvim
 - Windows <br />
  HOME/App/Local/nvim (run %App% in command prompt)
  

## in .config folder run

 Linux, Unix

```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

 Windows  

```
git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"
```

## you can do sourcing in plugin.lua, and run PackerSync command.

ref: https://github.com/wbthomason/packer.nvim


🎃 If you add some more configurations and plugins, pls check this article out! <br/>
ref: https://www.chrisatmachine.com/blog/category/neovim/12-git-integration
