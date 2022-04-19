#!/bin/bash

wc -c < quotes.txt

wc -l < quotes.txt

wc -w < quotes.txt

awk '{ print "Line No:<" NR ">-Count of Words:["NF"]" }' quotes.txt

cat quotes.txt |
tr '[:punct:]' ' ' |
tr -s ' ' |
tr ' ' '\n' |
sort |
uniq -c |
sort -rn |
awk '{print "Word: <"$2">-Count of repetation:["$1"] "}' |
grep -v "Word: <>"

exit 0
