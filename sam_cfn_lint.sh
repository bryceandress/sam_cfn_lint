#!/bin/bash

OUTPUT=$(sam validate --lint)

if echo $OUTPUT | grep -q "is a valid SAM Template"; then
    exit 0
else
    echo "$OUTPUT"
    exit 1
fi
