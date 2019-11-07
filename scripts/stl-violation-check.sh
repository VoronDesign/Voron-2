#!/bin/bash
## Usage: ./check.sh <max violations> <parameter name>
## eg: ./check.sh 0 Reversed facets

max_violations=$1
parameter="${@:2}"

result="$(cat)"

num_violations=$(echo "${result}" | grep "${parameter}" | sed 's/[^0-9]*//g')

if [ "$num_violations" -gt "$max_violations" ]; then
  echo "Failed check: ${parameter}. Max allowed violations: ${max_violations}. Detected violations: ${num_violations}" 1>&2
  exit 64
fi
