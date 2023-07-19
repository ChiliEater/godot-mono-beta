# Maintainer: Marvin Dalheimer <me@marvin-dalheimer.de>
pkgname=godot-mono-beta
pkgver=4.2.dev1
_vername=4.2-dev1
pkgrel=1
pkgdesc="Godot is an advanced, feature packed, multi-platform 2D and 3D game engine. It provides a huge set of common tools, so you can just focus on making your game without reinventing the wheel."
arch=("x86_64")
url="https://www.godotengine.org"
license=('MIT')
depends=("dotnet-sdk" "msbuild")
source=("godot-mono-beta.desktop" "icons.tar.gz")
#source_x86_64=("$pkgname-$pkgver-x86_64.zip::https://downloads.tuxfamily.org/godotengine/"$_vername"/"$_subvername"/mono/Godot_v"$_vername"-"$_subvername"_mono_linux_x86_64.zip")
source_x86_64=("$pkgname-$pkgver-x86_64.zip::https://github.com/godotengine/godot/releases/download/"$_vername"/Godot_v"$_vername"_mono_linux_x86_64.zip")

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
sha256sums=('9a47eb9c28aa8c189d700b10a10d9e0dd54325d442e3cd34d75de16f65c656ea'
         'ad95194d449ecb83ed4c01332fbf6b6469250a448aff8705c27157e91bea7f5a')
sha512sums_x86_64=('771e3c88bb463d1d1d1080c711e98b2e4f9cb9e06d94b388157efcce6d4389c23d9ac17d06eebb3490e27aa547e6ebab05e78977591a8dc3bc55f90a7e4cdc22')
