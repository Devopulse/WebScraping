#!/usr/bin/env bash

PORT=2003
SERVER=graphite-21.jiwiredev.com
echo "local.random.diceroll 4 `date +%s`" | nc -- ${SERVER} ${PORT}

# echo "local.random.diceroll 4 `date +%s`" | nc -- graphite-21.jiwiredev.com 5555