# Maintainer: Martin, e-mail: mdk at amescon dot com
pkgname=raspicommrs485
pkgver=1.4
pkgrel=2
pkgdesc="raspicomm rs485 driver /dev/ttyRPC0"
arch=('armv6h')
url="http://github.com/amescon/raspicomm-module-package-arch"
license=('GPL')
groups=()
depends=()
makedepends=()
optdepends=()
provides=('/dev/ttyRPC0')
conflicts=()
replaces=()
backup=()
options=()
install=${pkgname}.install
changelog=
source=("http://github.com/amescon/raspicomm-module/archive/v$pkgver.tar.gz")
#source=("raspicomm-module-$pkgver.tar.gz")
noextract=()
sha256sum=() #autofill using updpkgsums

build() {
  # unpack the source and compile the kernel module
  # tar -xf raspicomm-module-$pkgver.tar.gz
  tar -xf v$pkgver.tar.gz
  cd "$srcdir/raspicomm-module-$pkgver/"
  make -f Makefile_rpi
}

package() {
  cd "$srcdir/raspicomm-module-$pkgver"

  # copy the kernel module
  install -D raspicommrs485.ko ${pkgdir}/lib/modules/$(uname -r)/${pkgname}.ko
}