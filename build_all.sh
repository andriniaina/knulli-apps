# ------------------ ZSH
docker run -it -v $PWD:/pkg  -e SYNC_DATABASE=1 whynothugo/makepkg bash -c ./build_local.sh
rm -rf zsh/pkg zsh/src

# upload release
gh release delete stable
gh release create  stable repo/*
