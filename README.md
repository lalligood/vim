# My personal vim files #

# File descriptions: #
* `.vimrc` + `.gvimrc`: Linux config files
* `.vimrc_mac` + `.gvimrc_mac`: Mac config files
* `_vimrc` + `_gvimrc`: Windows config files
* `push.bat`: Windows batch file for copying all configuration files to `C:\Program Files (x86)\Vim`
* `push.sh`: Bash script for copying fonts to `~/.fonts/` & create symlinks to `.vimrc`, `.gvimrc`, & `vim/`.
* `vim/colors`: colorscheme files
    * [`vividchalk.vim`](https://github.com/tpope/vim-vividchalk)
    * `colorful256.vim`: found on [Vivify](http://bytefluent.com/vivify/)
* `vim/syntax`: highlight syntax files
    * [`arduino.vim`](https://bitbucket.org/johannes/arduino-vim-syntax/downloads)
    * [`sql.vim`](https://github.com/JessicaKMcIntosh/Vim)
* `vim/plugin`: plugin files
    * [`surround.vim`](https://github.com/tpope/vim-surround)
* `font/`: sweet [Hack font](https://github.com/chrissimpkins/Hack)

# Installation instructions: #
## Linux ##
### Desktop ###
```bash
./push.sh
```
### Remote server ###
```bash
./push.sh remote
```
Note: `remote` can actually be any string/value.
## Mac ##
```bash
./push.sh
```
## Windows ##
Double-click `push.bat`
