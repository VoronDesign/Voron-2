#!/bin/bash

BASE_DIR=${PWD}
CACHE_DIR=${PWD}/travis_cache

chmod +x ${BASE_DIR}/scripts/*.py

ADMESH_DIR=${CACHE_DIR}/admesh-0.98.4
mkdir -p ${CACHE_DIR}
cd ${CACHE_DIR}
if [ ! -d ${ADMESH_DIR} ]; then
  echo "Admesh cache miss; fetching and building ..."
  wget https://github.com/admesh/admesh/releases/download/v0.98.4/admesh-0.98.4.tar.gz
  tar -zxvf admesh-0.98.4.tar.gz
  cd ${ADMESH_DIR}
  ./configure
  make
  chmod +x admesh
fi
cd ${ADMESH_DIR}

# Find changed files
#git remote set-branches --add origin master
#git fetch
#git diff --name-only --diff-filter=AMR origin/master | xargs -n 1 -I {} ${BASE_DIR}/scripts/validate-file.py ${BASE_DIR}/{}

# Specific to PRs into another branch
git config remote.origin.fetch "+refs/heads/*:refs/remotes/origin/*"
git fetch
git diff --name-only --diff-filter=AMR HEAD origin/${TRAVIS_BRANCH} | xargs -n 1 -I {} ${BASE_DIR}/scripts/validate-file.py ${BASE_DIR}/{}
