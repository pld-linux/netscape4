#!/bin/sh

which=""

if echo $0 | grep 'navigator' >/dev/null; then
    which=netscape-navigator
elif echo $0 | grep 'communicator' >/dev/null ; then
    which=netscape-communicator
fi

if [ -z $which ]; then
    if rpm -q netscape-communicator >/dev/null 2>&1; then
	which=netscape-communicator
    elif rpm -q netscape-navigator >/dev/null 2>&1; then
	which=netscape-navigator
    else
	echo "You don't have netscape installed." >&2
    fi
fi
	
if ! rpm -q $which >/dev/null 2>&1; then
    echo "You don't have $which installed." >&2
    exit 1
fi

I="`rpm -q $which --qf '%{INSTALLPREFIX}\n'`"
if [ "$I" = "(none)" ]; then
    I=/usr
fi


if [ -x $I/lib/netscape/$which ]; then

    if [ -z "$*" ]; then
	HOMEPAGE=/usr/doc/HTML/index.html
	if [ -f $HOME/.netscape/preferences.js ]; then
	    if grep "browser.startup.homepage" \
			$HOME/.netscape/preferences.js > /dev/null; then
		HOMEPAGE=""
	    fi
	fi
	exec $I/lib/netscape/$which $HOMEPAGE
    else
	exec $I/lib/netscape/$which $*
    fi
fi

echo "An error occurred running and $I/lib/netscape/$which."
