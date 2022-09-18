#!/bin/zsh
time=3
for i in {1..3}
do
  nslookup srjc.anborong.top | awk 'NR==6{print $2}' | xargs echo "srjc.anborong.top:"
done
