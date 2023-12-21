#!/bin/bash

NVIM_PATH='~/.config/nvim'
LUA_PATH="${NVIM_PATH}/lua"

ROOT_FILES='LICENSE,install.sh,README.md'

echo 'installing NvChad…'
if [[ ! -d ${NVIM_PATH} ]]; then
  git clone https://github.com/NvChad/NvChad ${NVIM_PATH} --depth 1
  echo ' - OK'
elif
  echo "notice: ${NVIM_PATH} already exists"
fi

echo 'installing nvchad-go custom configs…'
if [[ ! -d ${LUA_PATH} ]]; then
  git clone https://github.com/alionapermes/nvchad-go ${LUA_PATH} --depth 1
  echo ' - OK'
elif
  echo "error: ${LUA_PATH} already exists"
fi

echo 'removing trash…'
rm -rf "${LUA_PATH}/{${ROOT_FILES}}"
echo ' - OK'

echo 'DONE'
