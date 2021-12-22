#!/bin/bash

awk '{users[$1] += $3} END {for (n in users) print n, users[n]}' listadown.txt
