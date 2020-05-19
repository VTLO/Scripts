#!/bin/bash
while IFS= read -r line; do
    echo "Text read from file: $line"
done < "$1"

sed -i 's/name-var/$line/g' Cert1.svg
