#!/bin/bash

grim -g "$(slurp -d)" - | wl-copy

play $HOME/.config/hypr/assets/sounds/camera-shutter.ogg
