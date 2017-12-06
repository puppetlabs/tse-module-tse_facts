#!/bin/bash
# Test
fqdn="$(hostname -f)"
if [[ "$fqdn" =~ ".pdx." ]];
then
    echo "realm=dmz";
elif [[ "$fqdn" =~ ".inf." ]];
then
    echo "realm=int";
else
    echo "realm=unknown";
fi
