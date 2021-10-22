
##
## ## Link
##
## * https://aur.archlinux.org/packages/dwm/
## * https://aur.archlinux.org/cgit/aur.git/tree/PKGBUILD?h=dwm
## * git clone git://git.suckless.org/dwm
## * https://git.suckless.org/dwm/
##

pkgname=gradwm
pkgver=0.1
pkgrel=1
pkgdesc="Gradwm (Dynamic window manager for X from Dwm)"
arch=('x86_64')
url="https://github.com/samwlep/gradwm"
license=('MIT')
#depends=()
depends=('libx11' 'libxinerama' 'libxft' 'freetype2')
optdepends=(
	'feh: for wallpaper'
	'scrot: for screenshot'
	'st: for terminal'
	'dmenu: as app launcher'
)
options=(!strip !emptydirs)


prepare () {
	cp -af "../asset/." "${srcdir}"
}


build () {

	make -C "${srcdir}/src/gradwm"

}


package () {

	cp -af "${srcdir}/usr" "${pkgdir}"
	rm -f "${pkgdir}/usr/share/gradwm/config/gradwm/bin/maintain-install.sh"


	#install -Dm755 "${srcdir}/src/gradwm/gradwm" "${pkgdir}/usr/bin/gradwm"
	install -Dm755 "${srcdir}/src/gradwm/dwm" "${pkgdir}/usr/bin/gradwm"


}
