mkdir repo -p

packages=("trimui_sharp_fn" "zsh" "zsh-static" "trimui_sharp_led")

for dir in "${packages[@]}"; do
    pushd $dir
    #LIBMAKEPKG_LINT_PACKAGE_DOTFILES_SH=0
    makepkg --config ../makepkg.conf -A --skipinteg --skipchecksums # -p PKGBUILD
    # makepkg --cleanbuild -f --clean
    popd
    rm -rf $dir/pkg $dir/src
done

# ------------------ rebuild database
cd repo
repo-add knulli-pacman-repo.db.tar.xz *zst

rm *.old -f
