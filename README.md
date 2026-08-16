# My dotfiles
This directory contrains the dotfiles for my system

## Requirements
Ensure you have the following installed on your system

- Git
- Stow

## Installation
1. Create the file `.zsh_secrets` and add the global variables.

2. Check out the dotfiles repo in your $HOME directory using git

```bash
git clone https://github.com/gllrmoliva/dotfiles.git
cd dotfiles
```

3. Use GNU stow to create symlinks

```bash
stow .
```
