#!/bin/bash

wget https://raw.githubusercontent.com/stamparm/blackbook/master/blackbook.txt
wget https://raw.githubusercontent.com/DevSpen/scam-links/master/src/links.txt
wget http://www.malwaredomainlist.com/hostslist/delisted.txt

for URL in `cat links.txt`; do echo $URL; curl -m 10 -s -I $1 "$URL" | grep HTTP/1.1 |  awk {'print $2'}; done &

for URL in `cat blackbook.txt`; do echo $URL; curl -m 10 -s -I $1 "$URL" | grep HTTP/1.1 |  awk {'print $2'}; done &

done
