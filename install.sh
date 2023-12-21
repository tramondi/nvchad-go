#!/bin/bash

NVIM_PATH="$HOME/.config/nvim"
CUSTOM_PATH="${NVIM_PATH}/lua/custom"
TARGET_PATH="/tmp/nvchad-go"

ROOT_FILES='LICENSE,install.sh,README.md'

echo 'installing NvChad…'
if [[ ! -d ${NVIM_PATH} ]]; then
  git clone https://github.com/NvChad/NvChad ${NVIM_PATH} --depth 1
  echo ' - OK'
else
  echo "notice: ${NVIM_PATH} already exists"
fi

echo 'installing nvchad-go custom configs…'
if [[ ! -d ${CUSTOM_PATH} ]]; then
  git clone https://github.com/alionapermes/nvchad-go ${TARGET_PATH} --depth 1

  mv ${TARGET_PATH}/lua/custom ${CUSTOM_PATH}
  rm -rf ${TARGET_PATH}

  echo ' - OK'
else
  echo "error: ${TARGET_PATH} already exists"
fi

echo 'DONE'
