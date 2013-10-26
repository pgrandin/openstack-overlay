# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3
PYTHON_DEPEND=2
SUPPORT_PYTHON_ABIS=1
RESTRICT_PYTHON_ABIS="3.*"

inherit distutils

DESCRIPTION="Python bindings to the OpenStack Volume API"
HOMEPAGE="http://docs.openstack.org/developer/python-cinderclient/"
SRC_URI="http://pypi.python.org/packages/source/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="dev-python/setuptools
		virtual/python-argparse
		dev-python/prettytable
		dev-python/simplejson
		dev-python/httplib2"
RDEPEND="${DEPEND}"

