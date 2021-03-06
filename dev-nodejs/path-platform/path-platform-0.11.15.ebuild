# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

NODE_MODULE_EXTRA_FILES="path.js"
NODEJS_MIN_VERSION="0.8.0"

inherit node-module

DESCRIPTION="Provide access to win32 and posix path operations"

LICENSE="MIT"
KEYWORDS="~amd64 ~x86"

DOCS=( README.md )
