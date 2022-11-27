#!/bin/bash
#
#
echo "autoload -U compinit; compinit" >> ~/.zshrc
kosli completion zsh > "${fpath[1]}/_kosli"
