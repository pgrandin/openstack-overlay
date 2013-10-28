# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python2_7 )

inherit distutils-r1

DESCRIPTION="A Django authentication backend for use with the OpenStack Keystone
Identity backend."
HOMEPAGE="http://django_openstack_auth.readthedocs.org/"
SRC_URI="mirror://pypi/${PN:0:1}/django_openstack_auth/django_openstack_auth-${PV}.tar.gz"
S="${WORKDIR}/django_openstack_auth-${PV}"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"
IUSE="test"

DEPEND="dev-python/setuptools
		test? (	>=dev-python/hacking-0.5.6
				<dev-python/hacking-0.8
				>=dev-python/Babel-0.8
				>=dev-python/coverage-3.6
				>=dev-python/mox-0.5.3 )
		>=dev-python/pbr-0.5.21
		<dev-python/pbr-1.0
		>=dev-python/python-keystoneclient-0.3.2
		>=dev-python/django-1.4
		<dev-python/django-1.6"

RDEPEND="${DEPEND}"

python_test() {
	"${PYTHON}" -m openstack_auth.tests.run_tests || die "Testsuite failed"
}
