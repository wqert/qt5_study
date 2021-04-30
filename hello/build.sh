export ARMQTDIR=/home/zbx-wqf/tools/qt-linux-arm-install-486
export PATH=$ARMQTDIR/bin:$PATH
export MANPATH=$ARMQTDIR/man:$MANPATH
export LD_LIBRARY_PATH=$ARMQTDIR/lib:$LD_LIBRARY_PATH
export QMAKESPEC=/home/zbx-wqf/code/test/qt-everywhere-opensource-src-4.8.6/mkspecs/qws/linux-arm-g++


mkdir -p build
cd build
cmake ..
make



# qmake -project main.cpp
# qmake
# make

