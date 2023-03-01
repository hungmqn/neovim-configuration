# Neovim Configuration

### Download the code

```git

git clone git@github.com:hungmqn/neovim-configuration.git

```

### Windows

1. Create new `nvim` folder if it doesn't exist.

```powershell

mkdir ~\AppData\Local\nvim\

```

2. Copy configuration (replace with correct paths).

```powershell

Copy-Item  "D:\Workspace\Personal\neovim-configuration\init.lua" -Destination "~\AppData\Local\nvim\init.lua"

Copy-Item -Path "D:\Workspace\Personal\neovim-configuration\lua\*" -Destination "~/AppData/Local/nvim/lua" -Recurse -Force

```

3. Save current settings to github repository.

```powershell

Copy-Item  "~\AppData\Local\nvim\init.lua" -Destination "D:\Workspace\Personal\neovim-configuration\init.lua"

Copy-Item -Path "~/AppData/Local/nvim/lua" -Destination "D:\Workspace\Personal\neovim-configuration\lua" -Recurse -Force

```

### Unix

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

### Notes

1.  `BurntSushi/ripgrep` is required for `live_grep` and `grep_string` and is the first priority for `find_files`. See [reference](https://github.com/nvim-telescope/telescope.nvim#suggested-dependencies) and [installation](https://github.com/BurntSushi/ripgrep). Windows users should install via [scoop](https://scoop.sh/), other OS can read the installation at [reference](https://github.com/BurntSushi/ripgrep#installation).

#### MacOS

```zsh

brew install ripgrep

```

#### Windows

```powershell

// Install scoop
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
irm get.scoop.sh | iex
// Install ripgrep
scoop install ripgrep
```

2. For Windows, A C compiler is required to compile the parsers needed for `nvim-treesitter`. See [document](https://github.com/nvim-treesitter/nvim-treesitter/wiki/Windows-support). If you don't have it, you will get `No C compiler found! "cc", "gcc", "clang", "cl", "zig" are not executable.` error message after open Neovim. Install one of C compilers will help resolve this problem. Notes: `nvim-treesitter` is required to run many plugins, if you just want to highlight or colorize the code, use some colorschema that support `nvim-treesitter` out of the box like `tokyonight`.

```powershell
scoop install zig
```

```powershell
scoop install gcc
```
