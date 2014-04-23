# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

PYTHON_DEPEND="2"

inherit distutils eutils

DESCRIPTION="The OpenStack Dashboard (Horizon) provides a baseline user
interface for managing OpenStack services. It is a reference implementation
built using the django-openstack project which contains all of the core
functionality needed to develop a site-specific implementation."
HOMEPAGE="http://wiki.openstack.org/OpenStackDashboard"
SRC_URI="https://launchpad.net/${PN}/havana/${PV}/+download/${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=">=dev-python/pbr-0.5.21
		<dev-python/pbr-1.0
		>=dev-python/django-1.4
		<dev-python/django-1.6
		>=dev-python/django-compressor-1.3
		>=dev-python/django-openstack-auth-1.1.3
		>=dev-python/eventlet-0.13.0
		>=dev-python/kombu-2.4.8
		>=dev-python/lesscpy-0.9j
		>=dev-python/iso8601-0.1.8
		>=dev-python/python-cinderclient-1.0.6
		>=dev-python/python-glanceclient-0.9.0
		>=dev-python/python-keystoneclient-0.3.2
		>=dev-python/python-novaclient-2.15.0
		>=dev-python/python-neutronclient-2.3.0
		<dev-python/python-neutronclient-3
		>=dev-python/python-swiftclient-1.5
		>=dev-python/python-ceilometerclient-1.0.5
		dev-python/netaddr
		>=dev-python/pytz-2010h
		>=dev-python/lockfile-0.8
		www-apache/mod_wsgi"

RDEPEND="${DEPEND}"

src_prepare() {
    epatch ${FILESDIR}"/bugfix-1125622.patch"
}


src_install() {
	distutils_src_install
	dodoc ${FILESDIR}"/horizon_vhost.conf"
	dodir /etc/horizon
	insinto /etc/horizon
	doins openstack_dashboard/local/local_settings.py.example
	# Little dirty this way, but get's the job done bro
	dosym /etc/horizon/local_settings.py /usr/lib64/python2.7/site-packages/openstack_dashboard/local/local_settings.py
}

pkg_postinst() {
	elog
	elog "A vhost configuration example for apache2 with mod_wsgi can be found"
	elog "in /usr/share/doc/${PF}/horizon_vhost.conf"
	elog "Adapt it to suite your needs, and install it in /etc/apache/vhosts.d/"
	elog "Replace localhost by the real servername"
	elog
	elog "The dashboard can be configured through /etc/horizon/settings.py"
	elog
}
