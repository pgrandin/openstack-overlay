# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

EGIT_REPO_URI="https://github.com/eharney/rtstool.git"
PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABIS="1"

inherit eutils distutils git-2 python

DESCRIPTION="RTSLib command-line interface"
HOMEPAGE="https://github.com/eharney/rtstool"
SRC_URI=""

LICENSE="AGPL-3"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="
	dev-python/rtslib-fb
	"
RDEPEND="${DEPEND}"
