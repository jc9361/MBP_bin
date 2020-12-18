#!/usr/bin/env bash


# DEFINE SOME VARIABLES FOR PROGRAM
BOOOKMARK_FILE=~/bin/env/scripts/bookmarks/bookmarks.txt
BROWSER='chromium'



bookmarks=$(cat $BOOOKMARK_FILE)

read selection <<< $(for x in $bookmarks; do echo $x; done |  \
    rofi -dmenu -p "BOOKMARKS" -font "Hack Nerd Font 12" -location 3 -width 20 -lines 100)


if [[ $selection == "" ]]; then
    echo nothing selected, exiting...
    sleep 1
    clear
else
    $BROWSER $selection
fi



