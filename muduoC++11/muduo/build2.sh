#!/bin/sh

set -x

cd ~/MyTest/aa/muduoC++11/muduo/build/
cmake ../
make 

# Use the following command to run all the unit tests
# at the dir $BUILD_DIR/$BUILD_TYPE :
# CTEST_OUTPUT_ON_FAILURE=TRUE make test

# cd $SOURCE_DIR && doxygen

