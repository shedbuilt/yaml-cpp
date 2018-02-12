#!/bin/bash
mkdir -pv build
cd build
cmake -DBUILD_SHARED_LIBS=ON .. && \
make -j $SHED_NUMJOBS && \
make DESTDIR="$SHED_FAKEROOT" install