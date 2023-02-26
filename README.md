# Neovim Configuration

### Download the code

```git
git clone git@github.com:hungmqn/neovim-configuration.git
```

### Windows Powershell

1. Create new `nvim` folder if it isn't exist.

```powershell
mkdir ~\AppData\Local\nvim\
```

2. Copy files & folder

```powershell
Copy-Item "D:\Workspace\Personal\neovim-configuration\init.lua" -Destination "~\AppData\Local\nvim\init.lua"
Copy-Item -Path "D:\Workspace\Personal\neovim-configuration\lua" -Destination "~/AppData/Local/nvim/lua" -Recurse
```
