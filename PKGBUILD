# Maintainer: Marvin Dalheimer <me@marvin-dalheimer.de>
pkgname=godot-mono-beta
pkgver=4.3.rc3
_vername=4.3-rc3
pkgrel=1
pkgdesc="Godot is an advanced, feature packed, multi-platform 2D and 3D game engine. It provides a huge set of common tools, so you can just focus on making your game without reinventing the wheel."
arch=("x86_64")
url="https://www.godotengine.org"
license=('MIT')
depends=("dotnet-sdk" "msbuild")
source=("godot-mono-beta.desktop" "icons.tar.gz")

# Pre-release source
source_x86_64=("$pkgname-$pkgver-x86_64.zip::https://github.com/godotengine/godot-builds/releases/download/"$_vername"/Godot_v"$_vername"_mono_linux_x86_64.zip")

# Release source
#source_x86_64=("$pkgname-$pkgver-x86_64.zip::https://github.com/godotengine/godot/releases/download/"$_vername"/Godot_v"$_vername"_mono_linux_x86_64.zip")

package() {
  mkdir -p "$pkgdir/opt/$pkgname"
  mkdir -p "$pkgdir/usr/bin"
  mkdir -p "$pkgdir/usr/share/icons/hicolor"
  mkdir -p "$pkgdir/usr/share/applications"

  cp -r "$srcdir/Godot_v${_vername}_mono_linux_x86_64" "$pkgdir/opt/$pkgname/godot"
  
  cp "$srcdir/godot-mono-beta.desktop" "$pkgdir/usr/share/applications/godot-mono-beta.desktop"
  cp -a "$srcdir/icons/." "$pkgdir/usr/share/icons/hicolor"

  chmod +x "$pkgdir/opt/$pkgname/godot/Godot_v${_vername}_mono_linux.x86_64"
  ln -s "/opt/$pkgname/godot/Godot_v${_vername}_mono_linux.x86_64" "$pkgdir/usr/bin/godot-mono-beta"
}

sha512sums=('4d72932f99fa2be2f532ed81b519f4279121f2d389ab4785a396079c41bd31c0ffb448722b7e63e7aae202348ae2cd9e972ff7fd6989c0949374d2628564f166'
            '9dae1e5e48b09a2d256b476e8f4341416e839f8f6c4d692ea043d4ccff3a66419d752fead8ad7aadbe3439634b12a6afb1fcab82d47811b9b65318133726b623')
sha512sums_x86_64=('5af81ac6f6a20ebdb9594a3e0efa36776f57c7884835aa7a72af45d6d92f5fd8addb1db4b6912f8a2c7578d654c7274d3c33c271cfbd6274e25cc7852b7d1102')
