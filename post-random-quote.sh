#!/bin/bash

NUMQ=$(cat quotes.json | jq '. | length')
RANDQ=$((1 + $RANDOM % $NUMQ))

QUOTE=$(cat quotes.json | jq -r --arg i $RANDQ '.[$i|tonumber].text')

echo $QUOTE

