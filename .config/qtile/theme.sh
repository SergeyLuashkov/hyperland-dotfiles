#!/bin/sh

WALLPAPER_DIR="${HOME}/.config/wpg/wallpapers"

while getopts "n" FLAG;
do
  case "$FLAG" in
    n)
      index=-1
      current_wallpaper=$(wpg -c)
      list_wallpaper=( $(wpg -l) )

      for i in "${!list_wallpaper[@]}";
      do
        if [[ "${list_wallpaper[$i]}" = "${current_wallpaper}" ]];
        then
          index=$i
          break
        fi
      done
      if [ "${index}" -lt 0 ] || [ $((++index)) -gt $(("${#list_wallpaper[@]}" - 1)) ];
      then
        index=0
      fi
      eval wpg -s "${WALLPAPER_DIR}/${list_wallpaper[$index]}" > /dev/null 2>&1
      ;;
  esac
done

echo "${WALLPAPER_DIR}/$(wpg -c)"
