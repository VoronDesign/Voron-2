#!/bin/bash

stl_path="${@:1}"
result="$(./admesh "${stl_path}")"

SCRIPT_DIR=$(dirname "$(readlink -f "$0")")

echo "Validating integrity of ${stl_path}"

echo "${result}" | ${SCRIPT_DIR}/stl-violation-check.sh 0 Backwards edges
echo "${result}" | ${SCRIPT_DIR}/stl-violation-check.sh 0 Degenerate facets
echo "${result}" | ${SCRIPT_DIR}/stl-violation-check.sh 0 Facets removed
echo "${result}" | ${SCRIPT_DIR}/stl-violation-check.sh 0 Facets added
echo "${result}" | ${SCRIPT_DIR}/stl-violation-check.sh 0 Facets reversed
echo "${result}" | ${SCRIPT_DIR}/stl-violation-check.sh 0 Backwards edges
