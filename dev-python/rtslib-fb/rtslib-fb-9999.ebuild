# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

EGIT_REPO_URI="https://github.com/agrover/rtslib-fb.git"
PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABIS="1"

inherit eutils distutils git-2 python

DESCRIPTION="A Python object API for managing the Linux LIO kernel target"
HOMEPAGE="https://github.com/agrover/rtslib-fb"
SRC_URI=""

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
