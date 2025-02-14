mkdir repo -p

packages=("zsh" "zsh-static" "trimui_sharp_led")

for dir in "${packages[@]}"; do
    pushd $dir
    makepkg --config ../makepkg.conf -A --skipinteg --skipchecksums # -p PKGBUILD
    # makepkg --cleanbuild -f --clean
    popd
    mv $dir/*.zst repo
    rm -rf $dir/pkg $dir/src
done

# ------------------ rebuild database
cd repo
repo-add knulli-pacman-repo.db.tar.xz *zst

rm *.old -f
