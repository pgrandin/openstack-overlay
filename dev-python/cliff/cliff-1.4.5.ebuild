# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# 

EAPI=5
PYTHON_COMPAT=( python{2_7,3_2,3_3} )

inherit distutils-r1

DESCRIPTION="Command Line Interface Formulation Framework"
HOMEPAGE="https://github.com/dreamhost/cliff"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE="test"

RDEPEND=""
DEPEND="${RDEPEND}
		dev-python/setuptools[${PYTHON_USEDEP}]
		>=dev-python/pyparsing-2.0.1[${PYTHON_USEDEP}]
		>=dev-python/cmd2-0.6.7[${PYTHON_USEDEP}]
		virtual/python-argparse[${PYTHON_USEDEP}]
		test? (	dev-python/nose[${PYTHON_USEDEP}]
				dev-python/mock[${PYTHON_USEDEP}]
				dev-python/coverage[${PYTHON_USEDEP}]
				dev-python/pep8[${PYTHON_USEDEP}]
				dev-python/cmd2[${PYTHON_USEDEP}] )"

python_test() {
	nosetests tests || die "Tests fail with ${EPYTHON}"
}
