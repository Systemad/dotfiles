# Dotfiles

## Hardware

| Component Type | Specification            |
| -------------- | ------------------------ |
| Laptop         | Thinkpad T14 (2020)      |
| CPU            | Ryzen 7 Pro 4750U        |
| RAM            | 2x16GB 3200MHz           |

## Software

| Type                | Software                         |
| ------------------- | -------------------------------- |
| OS                  | Manjaro (Arch)                   |
| Desktop Environment | Gnome   (Wayland)                |
| Window Manager      | Sway    (Wayland)                |
| Terminal            | Gnome Terminal                   |
| Editor              | NeoVim & VSCode                  |

## Setting up dotfiles

### Clone this repo to dotfiles in home directory

``` bash
git clone https://github.com/systemad/dotfiles ~/dotfiles
```

### Install dotfiles by running this script - configured by GNU Stow


`❯ pwd: /home/USER/dotfiles # Git repository`

To install user dotfiles, run `./setup_dotfiles.sh`.
To install root dotfiles, run `sudo ./setup_dotfiles.sh`.

For now the scripts installs all dotfiles, however, in the future I will add option to choose which dotfiles to install.

If you wish to install one or more dotfiles manually, you can do so by running `stowit ~ foldername`

### Adding dotfiles

In order to add your own dotfiles, you first need to create the directories inside the git repository, I will use sway as an example
```
❯ pwd: /home/USER/dotfiles      # Git repository
❯ mkdir -p sway/.config/sway
```

Then copy over your dotfile(s) to the newly created folder inside the git repository, in this case 'config' file inside '$HOME/.config/sway'
```
❯ pwd: /home/USER/.config/sway
❯ cp config /home/USER/dotfiles/sway/.config/sway
```

Then edit `./setup_dotfiles.sh` and add your dotfile folder under useronly(), for example

```
useronly=(
    git
    nvim
    sway # Added folder
)
```

And lastly run the installation script inside git repository directory. NOTE: You may have to remove your original dotfiles inside '$HOME/.config/' and stow will symlink them after
```
❯ pwd: /home/USER/dotfiles
❯ ./setup_dotfiles.sh
```

### To install packages for Arch (only for now)
```
❯ pwd: /home/USER/dotfiles/__setup
❯ ./arch_setup.sh
```
