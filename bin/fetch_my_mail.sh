#!/usr/bin/env bash

offlineimap -a yahoo & pid1=$!
offlineimap -a weblogism & pid2=$!

wait $pid1
wait $pid2
echo "Last execution: $(date)"
