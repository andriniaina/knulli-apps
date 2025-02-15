mkdir repo -p

packages=("zsh" "zsh-static" "trimui_sharp_led" "trimui_sharp_fn")

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
repo-add knulli-apps.db.tar.xz *zst

rm *.old -f
