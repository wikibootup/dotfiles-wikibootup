# My dotfiles

1. I use this using symbolic link, no actual .files exist(partially)
2. But, backup file(.back) needed for in emergency case

# Make symbolic link files

\* Make sure the library path -> $HOME/mydot (symbolic link recommended)
```sh
$ ln -s [YOUR LIBRARY PATH] ~
$ cd symbolic-linker
$ . .symbolic-link-generate
```

\* If you want remove all the exist dotfiles, do this. (!Note : It Removes without asking)
```sh
$ ln -s [YOUR LIBRARY PATH] ~
$ cd symbolic-linker
$ . .dotfiles-remover
```

# Install brew package list
```sh
$ cd brew-list-installer
$ . .brew-list-installer
```
