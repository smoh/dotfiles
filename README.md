dotfiles
========

My configuration files

```sh
cd
git clone https://github.com/smoh/dotfiles .dotfiles
cd .dotfiles
script/bootstrap
```

- Put local shell configuration in ~/.localrc and it will be sourced.
- Put local vim config in ~/.vimrc.local and it will be sourced.
- tmux version 2.9. Many options do not work with older tmux. Probably easier to just install latest tmux with conda.

zsh
---
- https://github.com/denysdovhan/spaceship-prompt
