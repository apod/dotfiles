# dotfiles

My personal dotfiles using [stow](https://www.gnu.org/software/stow/) and [zplug](https://github.com/b4b4r07/zplug).

## Installation

Install `git` and `stow` from you favorite package manager, and clone this repository:

```sh
git clone https://github.com/apod/dotfiles.git ~/.dotfiles
```

## Module Installation

```sh
stow -d ~/.dotfiles git zsh
```

## Available modules

```
git     > Git global config, ignores and aliases
zsh     > Zsh configuration using zplug
lein    > Leiningen configuration
termite > Termite configuration
ruby    > Ruby configuration
```

## Customize git

You can customize git locally by creating a `~/.gitconfig.local` file, that might look like this:

```
[user]
	name = Foo bar
	email = foobar@example.com
```

## Customize zsh

You can customize the following files for zsh:
```
~/.zshenv.local - for environment variables like PATH, MANPATH etc.
~/.zshrc.local  - to add zsh plugins using zplug, or anything else zsh related
```
