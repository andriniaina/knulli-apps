#!/usr/bin/bash

packages=("iptv" "trimui_sharp_fn" "zsh" "zsh-static" "trimui_sharp_led")

for dir in "${packages[@]}"; do
echo $dir
chmod 770 $dir
chgrp docker $dir
done
