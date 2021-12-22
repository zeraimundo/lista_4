#!/bin/bash

sed -E -e 's/ {2,}[[:alnum:]]* [[:alpha:]].*//'  < $1 > Meninos.txt
sed -E -e 's/[[:alnum:]]* [[:alpha:]].* {2,}//' < $1 > Meninas.txt

sed -E -e 's/ {2,}.*//'  < $1
echo ''
sed -E -e 's/[[:alnum:]]*.* {2,}//' < $1 
