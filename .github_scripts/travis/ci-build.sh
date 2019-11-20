#!/bin/bash

BASE_DIR=${PWD}
CACHE_DIR=${PWD}/travis_cache

######################################################################
# Travis CI helpers
######################################################################

start_test()
{
    echo "travis_fold:start:$1"
    echo "=============== $2"
    set -x
}

finish_test()
{
    set +x
    echo "=============== Finished $2"
    echo "travis_fold:end:$1"
}


######################################################################
# Admesh setup
######################################################################

chmod +x ${BASE_DIR}/.github_scripts/travis/*.py

ADMESH_DIR=${CACHE_DIR}/admesh-0.98.4
mkdir -p ${CACHE_DIR}
cd ${CACHE_DIR}
if [ ! -d ${ADMESH_DIR} ]; then
  echo "Admesh cache miss; fetching and building ..."
  wget https://github.com/admesh/admesh/releases/download/v0.98.4/admesh-0.98.4.tar.gz
  tar -zxf admesh-0.98.4.tar.gz
  cd ${ADMESH_DIR}
  ./configure
  make
  chmod +x admesh
fi
cd ${BASE_DIR}
sudo ln -s ${ADMESH_DIR}/admesh /usr/bin/admesh


######################################################################
# STL / changed file Validation
######################################################################

start_test validate_stls "Validate STLs"

if [ "$TRAVIS_PULL_REQUEST" == "false" ]; then
  # Regular branch push, test all files
  find ${BASE_DIR} -type f -iname "*.STL" -exec "${BASE_DIR}/.github_scripts/travis/validate-file.py" {} \;
else
  # Compare head against the branch to merge into (PR)
  git diff --name-only --diff-filter=AMR -R HEAD origin/${TRAVIS_BRANCH} | xargs -n 1 -I {} ${BASE_DIR}/.github_scripts/travis/validate-file.py ${BASE_DIR}/{}
fi

finish_test validate_stls "Validate STLs"

######################################################################
# Markdown Validation
######################################################################

start_test validate_markdown "Validate Markdown"

cd ${BASE_DIR}

# Validate all markdown files (eg, README.md).
remark -u validate-links --no-stdout --frail .

finish_test validate_markdown "Validate Markdown"


