#!/usr/bin/bash

# rm -rf repo  #  do not rebuild
docker run -it \
    -v $PWD:/pkg \
    -v $PWD/../trimui_sharp_led/release:/pkg/trimui_sharp_led/release \
    -v $PWD/../trimui_sharp_fn/release:/pkg/trimui_sharp_fn/release \
    -e SYNC_DATABASE=1 whynothugo/makepkg \
    bash -c ./build_local.sh

# upload release
gh release delete stable
gh release create  stable repo/* --title stable --notes "$(date)"
