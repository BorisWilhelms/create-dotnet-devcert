#!/bin/sh
. "$(dirname "$0")/common.sh"

OLD_CRT=/etc/ca-certificates/trust-source/localhost.p11-kit
if [ -f "$OLD_CRT" ]; then
    $SUDO rm "$OLD_CRT"
fi

$SUDO trust anchor --store $CRTFILE
$SUDO trust extract-compat

cleanup
