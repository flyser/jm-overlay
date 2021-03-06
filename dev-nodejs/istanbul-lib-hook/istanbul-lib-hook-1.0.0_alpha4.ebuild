# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

NODE_MODULE_DEPEND="append-transform:0.3.0"

inherit node-module

SLOT="1.0.0-alpha.4"
SRC_URI="http://registry.npmjs.org/${PN}/-/${PN}-${SLOT}.tgz"

DESCRIPTION="Hooks for require, vm and script used in istanbul"

LICENSE="BSD"
KEYWORDS="~amd64 ~x86"
IUSE="doc"

DOCS=( README.md )

src_install() {
	node-module_src_install
	docinto html
	use doc && dodoc -r docs/*
}
