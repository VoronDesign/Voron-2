BASE_DIR=${PWD}
CACHE_DIR=${PWD}/travis_cache

chmod +x ${BASE_DIR}/scripts/*.py

git diff --name-only --diff-filter=AM HEAD...$TRAVIS_BRANCH


