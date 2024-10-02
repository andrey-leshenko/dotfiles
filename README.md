Installation
============

The modules are managed under GNU Stow.
Clone this somewhere like `~/.dotfiles` and run:

    stow vim git ...

On Windows I found this workaround for now:

1. Run Git Bash as Administrator
2. `export MSYS=winsymlinks:nativestrict`
3. Create the links manually:

```sh
ln -s ./dotfiles/bash/.bash_aliases .bashrc # Git Bash doesn't have a default bashrc
ln -s ./dotfiles/git/.gitconfig
ln -s ./dotfiles/vim/.gvimrc
ln -s ./dotfiles/vim/.vimrc
ln -s ./dotfiles/vim/.vim # For Git Bash
ln -s ./dotfiles/vim/.vim vimfiles # For gVim
```
