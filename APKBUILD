# Contributor: Tomasz Sieprawski <tomasz@sieprawski.eu>
# Maintainer: Tomasz Sieprawski <tomasz@sieprawski.eu>
pkgname="md4c"
pkgver="0.4.5"
pkgrel=0
pkgdesc="MD4C stands for \"Markdown for C\" and that's exactly what this project is about."
url="https://github.com/mity/md4c"
arch="all"
options="!check"
license="MIT"
depends=""
makedepends="meson"
install=""
subpackages="$pkgname-dev"
source=""
srcdir="tmpsrc"

build() {
	meson \
		--wrap-mode=nofallback \
		--prefix=/usr \
		--sysconfdir=/etc \
		--mandir=/usr/share/man \
		--localstatedir=/var \
		--buildtype=release \
		. output
	ninja -C output
}

package() {
	DESTDIR="$pkgdir" ninja -C output install
}

md4c() {
    :
}
