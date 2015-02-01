#!/bin/bash

if [ $# -lt 1 ]; then
  echo "Usage: $0 INPUT_JSON OUTPUT_CVS"
  exit 1
fi

INPUT="$1"
OUTPUT="$2"


jq ".positions[] | [.time, .latitude, .longitude]" "$INPUT" | tr -d "\n" | sed "s/\]/\n/g" | tr -d "\"\[" > "$OUTPUT"

