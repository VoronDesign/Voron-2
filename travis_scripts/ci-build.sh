#!/bin/bash

BASE_DIR=${PWD}
CACHE_DIR=${PWD}/travis_cache

chmod +x ${BASE_DIR}/travis_scripts/*.py

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

if [ "$TRAVIS_PULL_REQUEST" == "false" ]; then
  # Compare branch against master
  git remote set-branches --add origin master
  git fetch
  git diff --name-only --diff-filter=AMR origin/master | xargs -n 1 -I {} ${BASE_DIR}/travis_scripts/validate-file.py ${BASE_DIR}/{}
else
  # Compare head against the branch to merge into (PR)
  git diff --name-only --diff-filter=AMR -R HEAD origin/${TRAVIS_BRANCH} | xargs -n 1 -I {} ${BASE_DIR}/travis_scripts/validate-file.py ${BASE_DIR}/{}
fi

cd ${BASE_DIR}

# Validate all markdown files (eg, README.md).
remark -u validate-links --no-stdout --frail .


