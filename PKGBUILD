# Maintainer: Marvin Dalheimer <me@marvin-dalheimer.de>
pkgname=godot-mono-beta
pkgver=4.1.rc2
_vername=4.1
_subvername=rc2
pkgrel=1
pkgdesc="Godot is an advanced, feature packed, multi-platform 2D and 3D game engine. It provides a huge set of common tools, so you can just focus on making your game without reinventing the wheel."
arch=("x86_64")
url="https://www.godotengine.org"
license=('MIT')
depends=("dotnet-sdk" "msbuild")
source=("godot-mono-beta.desktop" "icons.tar.gz")
source_x86_64=("$pkgname-$pkgver-x86_64.zip::https://downloads.tuxfamily.org/godotengine/"$_vername"/"$_subvername"/mono/Godot_v"$_vername"-"$_subvername"_mono_linux_x86_64.zip")

package() {
  mkdir -p "$pkgdir/opt/$pkgname"
  mkdir -p "$pkgdir/usr/bin"
  mkdir -p "$pkgdir/usr/share/icons/hicolor"
  mkdir -p "$pkgdir/usr/share/applications"

  cp -r "$srcdir/Godot_v${_vername}-${_subvername}_mono_linux_x86_64" "$pkgdir/opt/$pkgname/godot"
  
  cp "$srcdir/godot-mono-beta.desktop" "$pkgdir/usr/share/applications/godot-mono-beta.desktop"
  cp -a "$srcdir/icons/." "$pkgdir/usr/share/icons/hicolor"

  chmod +x "$pkgdir/opt/$pkgname/godot/Godot_v${_vername}-${_subvername}_mono_linux.x86_64"
  ln -s "/opt/$pkgname/godot/Godot_v${_vername}-${_subvername}_mono_linux.x86_64" "$pkgdir/usr/bin/godot-mono-beta"
}
sha256sums=('9a47eb9c28aa8c189d700b10a10d9e0dd54325d442e3cd34d75de16f65c656ea'
         'ad95194d449ecb83ed4c01332fbf6b6469250a448aff8705c27157e91bea7f5a')
sha512sums_x86_64=('a0413e7fabf71113e10483989193f0c62a42b7c65da4c54a620eb4d744e8830491c5f22c24e48bfb843d630d4fe6663d210233e431e492df0b70380e62d4630d')
