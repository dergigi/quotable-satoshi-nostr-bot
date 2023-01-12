#!/bin/bash

MYDIR=$(dirname $(readlink -f $0))

NUMQ=$(cat $MYDIR/quotes.json | jq '. | length')
RANDQ=$((1 + $RANDOM % $NUMQ))

QUOTE=$(cat $MYDIR/quotes.json | jq -r --arg i $RANDQ '.[$i|tonumber].text')

noscl publish "$QUOTE"
