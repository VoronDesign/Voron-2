BASE_DIR=${PWD}
CACHE_DIR=${PWD}/travis_cache

chmod +x ${BASE_DIR}/scripts/stl-checks.sh
chmod +x ${BASE_DIR}/scripts/stl-violation-check.sh

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
find ${BASE_DIR} -type f -iname "*.STL" -exec ${BASE_DIR}/scripts/stl-checks.sh {} \;
