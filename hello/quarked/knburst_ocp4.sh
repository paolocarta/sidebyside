#!/bin/bash

KSVC_URL="$(kubectl -n sidebyside get ksvc quarked -o jsonpath='{.status.domain}')"

siege -r 1 -c 40 -d 2 -v $KSVC_URL