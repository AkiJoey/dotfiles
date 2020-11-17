# AkiJoey's dotfiles

Personal terminal config and shell script.

## Windows

Windows powershell config and install script.

### Installation

`$ powershell -nop -c "iex(New-Object Net.WebClient).DownloadString('https://github.com/akijoey/dotfiles/windows/raw/master/install.ps1')"`

### Features

* `$PROFILE` - Personal powershell config.
+ `Module` - Personal module `ScreenFetch`.
* `Misaka` - Personal oh-my-posh theme.
* `putty.reg` - Personal putty config.

## Termux

Termux config and install script.

### Installation

`$ sh -c "$(curl -fsSL https://github.com/akijoey/dotfiles/termux/raw/master/install.sh)"`

### Features

- `.termux` - Personal termux config.
  * `colors.properties` - Personal color `Campbell Dark`.
  * `font.ttf` - Personal font `Cascadia Code`.

## Linux(Debian)

Various config and install script.

### Installation

`$ sh -c "$(curl -fsSL https://github.com/akijoey/dotfiles/linux/raw/master/install.sh)"`

### Features

+ `.emacs.d` - Personal emacs config.
* `.tmux.conf` - Personal tmux config.

## License

[MIT](https://github.com/akijoey/dotfiles/blob/master/LICENSE) © AkiJoey
