# Maintainer:  Nico Schottelius <nico-kbsd schottelius.org>

pkgname=kbsd
pkgver=0.1
pkgrel=2
pkgdesc="Setup Keyboard Backlight using the light sensor on MacBooks"
url="https://github.com/telmich/kbsd"
license=("GPL")
arch=("i686" "x86_64")
depends=("inotify-tools")
source=()
md5sums=()

gitroot="https://github.com/telmich/${pkgname}"

build() {
   cd "${srcdir}"

   git clone "$gitroot"
}

package() {
   install -Dm 755 $srcdir/$pkgname/kbsd ${pkgdir}/usr/bin/kbsd
}
