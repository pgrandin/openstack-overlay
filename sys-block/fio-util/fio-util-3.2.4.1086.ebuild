# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit rpm
DESCRIPTION="fio-util binaries for FusionIO products"
HOMEPAGE="https://www.fusionio.com/"
SRC_URI="${P}-1.0.el6.x86_64.rpm"
RESTRICT="fetch"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64 ~x86"

S="${WORKDIR}"

pkg_nofetch() {
    einfo "Upstream has implement a mandatory clickthrough EULA for distfile download"
    einfo "Please visit https://support.fusionio.com/downloads/"
    einfo "And place ${P}-1.0.el6.x86_64.rpm in ${DISTDIR}"
}

src_install() {
    cp -a usr "${D}" || die
}
