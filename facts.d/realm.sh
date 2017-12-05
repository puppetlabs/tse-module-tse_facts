#!/bin/bash
fqdn=$(hostname -f)
echo "$fqdn"
if [[ "$fqdn" =~ ".inf." ]];
then
    echo "realm=inf";
elif [[ "$fqdn" =~ ".pdx." ]];
then
    echo "realm=pdx";
else
    echo "realm=unknown";
fi
