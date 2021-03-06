# Copyright 2010-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

BITCOINCORE_COMMITHASH="cf33f196e79b1e61d6266f8e5190a0c4bfae7224"
BITCOINCORE_LJR_DATE="20150921"
BITCOINCORE_IUSE="ljr test"
BITCOINCORE_POLICY_PATCHES="cltv dcmp"
inherit bitcoincore eutils

DESCRIPTION="Bitcoin Core consensus library"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm ~arm64 ~x86 ~amd64-linux ~x86-linux"

src_configure() {
	bitcoincore_conf \
		--with-libs
}

src_install() {
	bitcoincore_src_install
	dodoc doc/bips.md
	prune_libtool_files
}
