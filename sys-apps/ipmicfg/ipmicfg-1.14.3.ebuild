# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

DESCRIPTION="Supermicro's ipmicfg"
HOMEPAGE="http://www.supermicro.com"
BUILD="20130725"
SRC_URI="ftp://ftp.supermicro.com/utility/IPMICFG/${PN}_${PV}_${BUILD}.zip"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64 ~x86"

S="${WORKDIR}"


src_install() {
    dobin ${PN}_${PV}_${BUILD}/linux/64bit/ipmicfg-linux.x86_64.static || die
}
