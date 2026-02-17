#!/bin/sh

VARIANT="fakenews-gambling-porn-social"
URL="https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/$VARIANT/hosts"
wget -qO- "$URL" | grep '^0\.0\.0\.0' | sort | awk '{print "local-zone: \""$2"\" refuse"}' >`dirname $0`/adblock.conf
