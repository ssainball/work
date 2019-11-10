#!/bin/bash


count=`ps -ef | grep jormungandr | wc -l`
echo $count

if (( $count < 2 ))
then
  /usr/bin/nohup /root/jormungandr --genesis-block-hash $(cat /root/genesis-hash.txt) --config /root/config.yaml --secret /root/node_secret.yaml --log-level info &
fi
