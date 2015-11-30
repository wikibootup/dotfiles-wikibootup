# My dotfiles

1. I use this using symbolic link, no actual .files exist(partially)
2. But, backup file(.bak) is useful when emergency case

# Make symbolic link files

```sh
$ ln -s [YOUR LIBRARY PATH] ~
$ cd symbolic-linker
$ . .symbolic-link-generate
```

\* If you want remove all the exist dotfiles, do this. (!Note : It Removes without asking)
```sh
$ cd symbolic-linker
$ . .dotfiles-remover
```

# Install brew package list
```sh
$ cd brew-list-installer
$ . .brew-list-installer
```
