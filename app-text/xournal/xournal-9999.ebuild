# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

[[ ${PV} == *9999 ]] && GNOME2_EAUTORECONF=yes

inherit gnome2 cmake

if [[ ${PV} == *9999 ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/xournalpp/xournalpp.git"
	unset SRC_URI
else
	KEYWORDS="~amd64 ~ppc64 ~x86"
	SRC_URI="https://downloads.sourceforge.net/${PN}/${P}.tar.gz"
fi

DESCRIPTION="An application for notetaking, sketching, and keeping a journal using a stylus"
HOMEPAGE="http://xournal.sourceforge.net/"

LICENSE="GPL-2"
SLOT="0"
IUSE="+pdf vanilla"

DEPEND="
	app-text/poppler[cairo]
	dev-libs/atk
	dev-libs/glib
	gnome-base/libgnomecanvas
	media-libs/freetype
	media-libs/fontconfig
	sys-libs/zlib
	x11-libs/cairo
	x11-libs/gdk-pixbuf
	x11-libs/gtk+:2
	x11-libs/pango
	media-libs/portaudio
	dev-libs/libzip
"
RDEPEND="
	${DEPEND}
	pdf? ( app-text/poppler[utils] app-text/ghostscript-gpl )
"
BDEPEND="virtual/pkgconfig"

src_prepare() {
	cmake_src_prepare

#
#
#
}

src_configure() {
	cmake_src_configure
}

src_compile() {
cmake_src_compile
}

src_install() {
	cmake_src_install
}
