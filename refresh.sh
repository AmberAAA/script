#!/bin/zsh
time=3
for i in {1..3}
do
  nslookup srjc.anborong.top >> /dev/null
done
