#!/usr/bin/bash

packages=("zsh" "zsh-static" "trimui_sharp_led")

for dir in "${packages[@]}"; do
echo $dir
chmod 770 $dir
chgrp docker $dir
done
