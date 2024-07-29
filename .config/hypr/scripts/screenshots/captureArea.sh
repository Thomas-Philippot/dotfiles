#!/bin/bash

grim -g "$(slurp)" $HOME/Images/Captures\ d’écran/$(date +'%s_grim.png')

play $HOME/.config/hypr/assets/sounds/camera-shutter.ogg
