#!/bin/sh

##
## OSX Binaries aren't easy to ship statically linked so we need to work around this...
##
CWD=`pwd`

##
## This allows the cvc4 binary to find its libraries inside this package.
##
export DYLD_LIBRARY_PATH=$CWD/cvc4-1.4.0/lib:$DYLD_LIBRARY_PATH

##
## Actually execute the real prover 
##

./cvc4.bin "$@"
