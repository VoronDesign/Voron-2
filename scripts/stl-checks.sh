#!/bin/bash

stl_path="${@:1}"
result="$(./admesh "${stl_path}")"

echo "Validating integrity of ${stl_path}"

echo "${result}" | ./stl-violation-check.sh 0 Backwards edges
echo "${result}" | ./stl-violation-check.sh 0 Degenerate facets
echo "${result}" | ./stl-violation-check.sh 0 Facets removed
echo "${result}" | ./stl-violation-check.sh 0 Facets added
echo "${result}" | ./stl-violation-check.sh 0 Facets reversed
echo "${result}" | ./stl-violation-check.sh 0 Backwards edges
