# dotfiles
Host all my dotfiles in one place.

## How to setup my dotfiles
### Install stow
Check if stow is installed, if not launch the installation.
```bash
# If necessary
chmod +X install_stow.sh
# Launch the install script
./install_stow.sh
```

### Setup the environment
Remove empty simlink in home folder, and dotfile that will be simlinked.
Then stow all my dotfiles in function of the OS.

```bash
# If necessary
chmod +X setup_env.sh
# Launch the install script
./setup_env.sh
```

## Other actions
### How to remove a stow link
Remove you want to remove a stow simlink.
```bash
stow -D my_folder
```


## Specific information for each app
* [aerospace](aerospace/README.md)
* [cheat](cheat/README.md)
* [nvim](nvim/README.md)
* [tmux](tmux/README.md)
* [vim](vim/README.md)
* [zsh](zsh/README.md)