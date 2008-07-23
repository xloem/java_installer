#!/bin/sh

. "$HOME/_install_toSource.sh" || exit 0
cd "$INSTALL_PATH"

if test -f stun -a -f plug
then
	echo "Enabling the STUN plugin"
	if test ! -f plugins; then mkdir plugins; fi
	PLUGINS="`cat plug`"
	echo "JSTUN;$PLUGINS" > plug2
	mv -f plug2 plug
	if test ! -f offline
	then
		java $JOPTS -jar bin/sha1test.jar JSTUN.jar plugins "$CAFILE" >/dev/null 2>&1
	fi
	rm -f stun
fi
