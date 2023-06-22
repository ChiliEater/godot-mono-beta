#!/bin/fish

set arch "x86_64"
set repo "multibin"
set mirror_root "/srv/mirror/www"
set mirror "$mirror_root/$repo/os/$arch"
set relative_script "../update-mirror.sh"

makepkg -d
sudo mv *.pkg.tar.zst "$mirror"

echo "Updating database"
sudo "$mirror_root/$relative_script" "$repo"
