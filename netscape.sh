#!/bin/sh

PREFIX="/usr"

MOZILLA_HOME=${PREFIX}/lib/netscape
export MOZILLA_HOME

case "$1" in
    -COMMUNICATOR)
	which="netscape-communicator"
	shift
	;;
    -NAVIGATOR)
	which="netscape-navigator"
	shift
	;;
    *)
	if [ -x "${PREFIX}/bin/netscape-communicator" ]; then
		which="netscape-communicator"
	elif [ -x "${PREFIX}/bin/netscape-navigator" ]; then
		which="netscape-navigator"
	else
		echo "Could not find neither netscape-communicator or navigator!"
		exit 1
	fi
	;;
esac

if [ -x ${PREFIX}/bin/${which} ]; then

    if [ -z "$*" ]; then
	HOMEPAGE="http://www.pld-linux.org"
	if [ -f ${HOME}/.netscape/preferences.js ]; then
	    if grep "browser.startup.homepage" \
			${HOME}/.netscape/preferences.js > /dev/null; then
		HOMEPAGE=""
	    fi
	fi
	exec ${PREFIX}/bin/${which} ${HOMEPAGE}
    else
	exec ${PREFIX}/bin/${which} $*
    fi
fi

echo "An error occurred running $PREFIX/bin/$which}."

