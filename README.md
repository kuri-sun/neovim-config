# Neovim config

### 1. Location 
 - Mac, Linux <br />
  HOME/.config/nvim
 - Windows <br />
  HOME/App/Local/nvim (run %App% in command prompt)
  

### 2. Packer install in your local machine.

 Linux, Unix

```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

 Windows  

```
git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"
```

### 3. you can do :so in plugin.lua, and run :PackerSync.

ref: https://github.com/wbthomason/packer.nvim



🎃 If you add some more configurations and plugins, pls check this article out! <br/>
ref: https://www.chrisatmachine.com/blog/category/neovim/12-git-integration
