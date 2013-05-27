set -a
set -v
set -E
set -x

. ./lib/wercker-essentials.sh
roundup ./test/*-test.sh
