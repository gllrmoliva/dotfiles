# My dotfiles
This directory contrains the dotfiles for my system

## Requirements
Ensure you have the following installed on your system

- Git
- Stow

## Installation
First, check out the dotfiles repo in your $HOME directory using git

```bash
git clone https://github.com/gllrmoliva/dotfiles.git
cd dotfiles
```

then use GNU stow to create symlinks

```bash
stow .
```
