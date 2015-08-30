#!/bin/sh

##
## OSX Binaries aren't easy to ship statically linked so we need to work around this...
##
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

##
## This allows the cvc4 binary to find its libraries inside this package.
##
export DYLD_LIBRARY_PATH=$DIR/cvc4-1.4.0/lib:$DYLD_LIBRARY_PATH

##
## Actually execute the real prover 
##

PATH=$DIR:$PATH


cvc4.bin "$@"
