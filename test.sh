#!/bin/sh
directory="$(pwd)/lib"
echo "Adding $directory to path"

if [ -d "$directory" ] ; then
  PATH="$PATH:$directory"
fi

. ./lib/wercker-essentials.sh
./lib/shunit2 ./test/arguments-test.sh
