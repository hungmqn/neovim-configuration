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

2. Using `nvim-treesitter` requires a C compiler to compile the parsers needed for. See [document](https://github.com/nvim-treesitter/nvim-treesitter/wiki/Windows-support). If you don't have it, you will get `No C compiler found! "cc", "gcc", "clang", "cl", "zig" are not executable.` error message after open Neovim. This is already exist for most Unix systems, but not yet available for Windows. Install one of C compilers will help resolve this problem. Notes: `nvim-treesitter` is required to run many plugins, if you just want to highlight or colorize the code, use some colorschema that support `nvim-treesitter` out of the box like `tokyonight`.

```powershell
scoop install zig
```

```powershell
scoop install gcc
```

3. Using `null-ls` for format and linting requires the command available globally for formatting or diagnostics. For example, if you use `prettier` for formatting and `eslint` for linting, you need to make sure that `prettier` and `eslint` are available globally on your console.

```zsh
npm install -g eslint prettier
```

```powershell
scoop install stylua
```

4. To support writing Rust, it requires [rust-analyzer](https://github.com/rust-lang/rust-analyzer) (language server for Rust) to be installed before adding it to mason's config.

```zsh
// Clone rust analyzer repository
git clone git@github.com:rust-lang/rust-analyzer.git
// Go to pulled repository
cd rust-analyzer
// Install rust-analyzer binary
cargo xtask install --server
```

Get problem with the command? Rust having two ABIs on MSVC and the GNU. By default, Rust uses the MSVC ABI, which it was causing the `Error link.exe failed exit code 1`.
It can be solved by below command.

```zsh
// Install GNU ABI
rustup toolchain install stable-gnu
// Change rust configuration
rustup set default-host x86_64-pc-windows-gnu
// or 
rustup default stable-x86_64-pc-windows-gnu
// Install the binary again
cargo xtask install --server
```

