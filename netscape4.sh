#!/bin/sh

PREFIX="/usr/X11R6/bin"
if [ -x "${PREFIX}/netscape-communicator" ]; then
	which="netscape-communicator"
elif [ -x "${PREFIX}/netscape-navigator" ]; then
	which="netscape-navigator"
else
	echo "Could not find neither netscape-communicator or navigator!"
	exit 1
fi

if [ -x ${PREFIX}/${which} ]; then

    if [ -z "$*" ]; then
	HOMEPAGE="http://www.pld.org.pl"
	if [ -f ${HOME}/.netscape/preferences.js ]; then
	    if grep "browser.startup.homepage" \
			${HOME}/.netscape/preferences.js > /dev/null; then
		HOMEPAGE=""
	    fi
	fi
	exec ${PREFIX}/${which} ${HOMEPAGE}
    else
	exec ${PREFIX}/${which} $*
    fi
fi

echo "An error occurred running $PREFIX/$which}."

