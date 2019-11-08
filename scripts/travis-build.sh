BASE_DIR=${PWD}
CACHE_DIR=${PWD}/travis_cache

chmod +x ${BASE_DIR}/scripts/*.py

ADMESH_DIR=${CACHE_DIR}/admesh-0.98.4
rm -rf ${CACHE_DIR}
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
.${BASE_DIR}/scripts/validate-stls.py ${BASE_DIR}
