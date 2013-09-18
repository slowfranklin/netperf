#!/bin/sh

aclocal -I src/missing/m4 || exit 1
autoheader || exit 1
automake  --include-deps --add-missing --foreign --copy || exit 1
autoconf || exit 1
