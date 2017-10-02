# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{4,5,6} )
PYTHON_REQ_USE="ncurses"

inherit git-r3 distutils-r1

DESCRIPTION="A ncurses-based status monitor for Tor relays"
HOMEPAGE="https://nyx.torproject.org"
EGIT_REPO_URI="https://git.torproject.org/nyx.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND=">=net-libs/stem-1.5.4_p20170909[${PYTHON_USEDEP}]
	net-vpn/tor"

python_install_all() {
	distutils-r1_python_install_all
	doman nyx.1
	dodoc web/nyxrc.sample
}
