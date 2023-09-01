#!/bin/bash
 
entries="Active Screen Output Area Window"
 
selected=$(printf '%s\n' $entries | wofi --style=$HOME/.config/wofi/style.widgets.css --conf=$HOME/.config/wofi/config.screenshot | awk '{print tolower($1)}')
 
case $selected in
  active)
    /usr/bin/grimshot --notify copy active ;;
  screen)
    /usr/bin/grimshot --notify copy screen ;;
  output)
    /usr/bin/grimshot --notify copy output ;;
  area)
    /usr/bin/grimshot --notify copy area   ;;
  window)
    /usr/bin/grimshot --notify copy window ;;
esac
