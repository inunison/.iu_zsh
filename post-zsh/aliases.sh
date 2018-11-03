#!/usr/bin/env bash

alias mf='git fetch origin master:master'
alias df='git fetch origin develop:develop'
alias mp='git checkout master && git pull'
alias dp='git checkout develop && git pull'
alias bc='git checkout'
alias bcn='git checkout -b'
alias bd='git branch -d'
alias bp='git push'
alias bpn='git push --set-upstream origin $(git rev-parse --abbrev-ref HEAD)'
alias gp='git pruneall'
alias vb='git commit -m "Bump version to $(cat version.dat)"'
