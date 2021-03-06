# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

NODE_MODULE_HAS_TEST="1"
NODE_MODULE_TEST_DEPEND="should:11.2.0"

inherit node-module

DESCRIPTION="Fast and simple MD5 hashing utility with zero module dependencies"

LICENSE="MIT"
KEYWORDS="~amd64 ~x86"

DOCS=( README.md )
DEPEND="${DEPEND}
	test? ( dev-util/mocha )"

node_module_run_test() {
	mocha || die "Tests failed"
}
