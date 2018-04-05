#!/usr/bin/env bash

[ -z ${IU_ZSH} ] && (echo "IU_ZSH must be set" && exit -1)
[ -z ${ZSH} ] && (echo "ZSH must be set" && exit -1)

(cd ${IU_ZSH} && (git pull >/dev/null 2>/dev/null || :))

for file in $(find "$IU_ZSH/pre-zsh" -name '*.sh'); do
    [ -f ${file} ] || (echo "ERROR LOADING $file" && continue)
    source $file
done

source "$ZSH/oh-my-zsh.sh"

for file in $(find "$IU_ZSH/post-zsh" -name '*.sh'); do
    [ -f ${file} ] || (echo "ERROR LOADING $file" && continue)
    source ${file}
done
