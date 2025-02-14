docker run -it -v $PWD:/pkg  -e SYNC_DATABASE=1 whynothugo/makepkg bash -c ./build_local.sh
rm -rf zsh/pkg zsh/src
# pacman --noconfirm -U zsh-v1-1-any.pkg.tar.zst
