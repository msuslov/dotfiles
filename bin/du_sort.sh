#!/bin/bash
# du_sort
# du_sort src/* | head -n 2
du -sh $@ | perl -e 'sub h{%h=(K=>10,M=>20,G=>30);($n,$u)=shift=~/([0-9.]+)(\D)/; return $n*2**$h{$u}}print sort{h($b)<=>h($a)}<>;'
