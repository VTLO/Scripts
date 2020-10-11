#!/bin/bash

# Credit : https://www.reddit.com/r/debian/comments/j658mx/i_made_a_simple_wallpaper_in_gimp_with_the_debian/

# Completely random hue, but saturation and brightness
# constrained to avoid selecting anything too dark or too grey
[ -f openlogo-nd.svg ] || wget https://www.debian.org/logos/openlogo-nd.svg
h=$(($RANDOM%360))
s=$((128+$RANDOM%128))
b=$((128+$RANDOM%128))
swirl="hsb(${h}, ${s}, ${b})"

# 30 degrees around the colour wheel is supposed to
# produce colours that go together
h=$(((h+30)%360))
gradient1="hsb(${h}, ${s}, ${b})"

h=$(((h+30)%360))
gradient2="hsb(${h}, ${s}, ${b})"

# Original colours:
#swirl='#ffffff'
#gradient1='#00346f'
#gradient2='#00a74a'

# Resolution to render the SVG at:
density=660

# Angle of the gradient
direction=$(($RANDOM%360))

convert \
\( -background none -fill "$swirl" -colorize 100 -density $density openlogo-nd.svg -gravity center -extent 2560x1440  \
\( +clone -background black -shadow 100x10+0+0 \) -background none -compose DstOver -flatten \) \
\( -size 2560x1440 -define gradient:angle=${direction} gradient:"${gradient1}-${gradient2}" \) -composite wallpaper.png
