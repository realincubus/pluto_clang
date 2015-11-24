
base=$(dirname "$0")
cd $base
./autogen.sh
./configure --enable-debug --prefix=$base/install
