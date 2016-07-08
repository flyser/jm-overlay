# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

NODE_MODULE_EXTRA_FILES="common.js sync.js"
NODE_MODULE_DEPEND="inflight:1.0.5
	inherits:2.0.1
	minimatch:3.0.2
	once:1.3.3
	path-is-absolute:1.0.0"

inherit node-module

RDEPEND="${RDEPEND}
	dev-nodejs/fs-realpath:1.0.0"

DESCRIPTION="A little globber"

LICENSE="ISC"
KEYWORDS="~amd64 ~x86"
IUSE=""

DOCS=( README.md changelog.md )

src_install() {
	node-module_src_install
	install_node_module_depend "fs.realpath:1.0.0"
}