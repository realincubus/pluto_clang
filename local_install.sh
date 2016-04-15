
base=$(pwd)
cd $base
./autogen.sh
./configure --enable-debug --prefix=$base/install
make 
make install
