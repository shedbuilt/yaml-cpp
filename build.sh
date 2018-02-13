#!/bin/bash
mkdir -pv build
cd build
cmake -DBUILD_SHARED_LIBS=ON \
      -DCMAKE_INSTALL_PREFIX=/usr \
      .. && \
make -j $SHED_NUMJOBS && \
make DESTDIR="$SHED_FAKEROOT" install