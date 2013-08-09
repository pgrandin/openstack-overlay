# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit linux-mod
DESCRIPTION="iomemory-vsl kernel module for FusionIO cards"
HOMEPAGE="https://www.fusionio.com/"
SRC_URI="${PN}_${PV}-1.0.tar.gz"
RESTRICT="fetch"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

BUILD_TARGETS="all"
MODULE_NAMES="iomemory-vsl(block:${WORKDIR}/${PN}-${PV}/root/usr/src/fio/iomemory-vsl:${WORKDIR}/${PN}-${PV}/root/usr/src/fio/iomemory-vsl)"


pkg_nofetch() {
    einfo "Upstream has implement a mandatory clickthrough EULA for distfile download"
	einfo "Please visit https://support.fusionio.com/downloads/"
	einfo "And place ${PN}_${PV}-1.0.tar.gz in ${DISTDIR}"
}
