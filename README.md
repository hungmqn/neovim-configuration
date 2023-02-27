# Neovim Configuration

### Download the code

```git
git clone git@github.com:hungmqn/neovim-configuration.git
```

### Windows Powershell

1. Create new `nvim` folder if it doesn't exist.

```powershell
mkdir ~\AppData\Local\nvim\
```

2. Copy configuration (replace with correct paths).

```powershell
Copy-Item "D:\Workspace\Personal\neovim-configuration\init.lua" -Destination "~\AppData\Local\nvim\init.lua"
Copy-Item -Path "D:\Workspace\Personal\neovim-configuration\lua\*" -Destination "~/AppData/Local/nvim/lua" -Recurse -Force
```

3. Save current settings to github repository.

```powershell
Copy-Item "~\AppData\Local\nvim\init.lua" -Destination "D:\Workspace\Personal\neovim-configuration\init.lua"
Copy-Item -Path "~/AppData/Local/nvim/lua" -Destination "D:\Workspace\Personal\neovim-configuration\lua" -Recurse -Force
```

### MacOS / Linux

1. Create new `nvim` folder if it doesn't exist.

```zsh
mkdir ~/.config/nvim/
```

2. Copy configuration (replace with correct paths).

```zsh
cp /Users/hungnguyen/Documents/Workspace/Personal/neovim-configuration/init.lua ~/.config/nvim/init.lua
cp -R /Users/hungnguyen/Documents/Workspace/Personal/neovim-configuration/lua ~/.config/nvim/lua
```

3. Restore settings from github.

```zsh
cp /Users/hungnguyen/Documents/Workspace/Personal/neovim-configuration/init.lua ~/.config/nvim/init.lua
cp -R /Users/hungnguyen/Documents/Workspace/Personal/neovim-configuration/lua/* ~/.config/nvim/lua/
```

4. Save current settings to github repository.

```zsh
cp -R ~/.config/nvim/* /Users/hungnguyen/Documents/Workspace/Personal/neovim-configuration/
```
