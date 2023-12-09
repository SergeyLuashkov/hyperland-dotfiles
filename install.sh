#!/bin/sh

ICONS_ORIGINAL="${PWD}/.local/share/icons"
ICONS_LINK="${HOME}/.local/share/icons/"
THEMES_ORIGINAL="${PWD}/.local/share/themes"
THEMES_LINK="${HOME}/.local/share/themes/"
CONFIG_ORIGINAL="${PWD}/.config"
CONFIG_LINK="${HOME}/.config/"

create_links()
{
  for FILE in $1/*;
  do
    echo "create link for ${FILE} to $2"
    ln -s $FILE $2
  done
}

create_links $ICONS_ORIGINAL $ICONS_LINK
create_links $THEMES_ORIGINAL $THEMES_LINK
create_links $CONFIG_ORIGINAL $CONFIG_LINK
