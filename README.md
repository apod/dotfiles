# dotfiles

My personal dotfiles using [stow](https://www.gnu.org/software/stow/) and [zplug](https://github.com/b4b4r07/zplug).

## Required

Install `git` and `stow` from you favorite package manager.

## Installation

Clone the dotfiles repository

```sh
git clone https://github.com/apod/dotfiles.git ~/.dotfiles
```

## Module Installation

```sh
cd ~/.dotfiles
stow git
```

## Available modules

```
git     > Git global config, ignores and aliases
```

## Customize git

You can customize git locally by creating a `~/.gitconfig.local` file, that might look like this:

```
[user]
	name = Foo bar
	email = foobar@example.com
```
