#!/bin/sh

while :; do 
  # to exit if Ctrl + c
  music="$(fzf)" || exit
  echo "playing $music"
  mpv "$music"
done
