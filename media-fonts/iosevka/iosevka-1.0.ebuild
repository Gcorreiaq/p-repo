EAPI=8

inherit toolchain-funcs

DESCRIPTION="iosevka ebuild"

SRC_URI="https://github.com/Gcorreiaq/p-repo-forks/raw/main/iosevka.tar.xz -> iosevka.tar.xz"

SLOT="0"

KEYWORDS="amd64 x86"

IUSE=""

src_install() {
dodir "/usr/share/fonts/iosevka"
insinto "/usr/share/fonts/iosevka"
doins Iosevka*

}
