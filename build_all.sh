#!/usr/bin/bash

# rm -rf repo  #  do not rebuild
docker run -it -v $PWD:/pkg  -e SYNC_DATABASE=1 whynothugo/makepkg bash -c ./build_local.sh

# upload release
gh release delete stable
gh release create  stable repo/* --title stable --notes "$(date)"
