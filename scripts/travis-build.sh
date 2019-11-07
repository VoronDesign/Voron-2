CACHE_DIR=${PWD}/travis_cache
mkdir -p CACHE_DIR
cd CACHE_DIR
wget https://github.com/admesh/admesh/releases/download/v0.98.4/admesh-0.98.4.tar.gz
tar -zxvf admesh-0.98.4.tar.gz
cd admesh-0.98.4
./configure
make
./admesh --help
