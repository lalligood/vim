# My personal vim files #

## File descriptions ##

* `.vimrc` + `.gvimrc`: Linux/Mac config files
* `_vimrc` + `_gvimrc`: Windows config files
* `push.bat`: Windows batch file for copying all configuration files to `C:\Program Files (x86)\Vim`
* `push.sh`: Bash script for copying fonts to `~/.fonts/` & create symlinks to `.vimrc`, `.gvimrc`, & `vim/`.

## Installation Instructions ##

### For ALL platforms ###

When running `push.sh` (on Linux or Mac), it will clone sweet [Hack font](https://github.com/chrissimpkins/Hack) to the **same parent directory** where this vim project is kept. (e.g., if this project is in `~/Projects/personal/vim`, then Hack will be cloned to `~/Projects/personal/hack`)

### Linux ###

#### Desktop ####

```bash
./push.sh gui
```

#### Remote server ####

```bash
./push.sh
```

* Note: `remote` can actually be any string/value.

### Mac ###

```bash
./push.sh
```

### Windows ###

Double-click `push.bat`
