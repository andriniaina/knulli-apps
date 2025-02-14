mkdir repo


pushd zsh
makepkg --config ../makepkg.conf -A --skipinteg --skipchecksums # -p PKGBUILD
makepkg --clean
popd

mv zsh/*.zst repo

cd repo
repo-add andri-knulli-repo.db.tar.xz *zst

rm *.old -f
