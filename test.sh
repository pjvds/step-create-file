#!/bin/bash
set -a
set -v
set -E
set -x

. ./lib/wercker-essentials.sh
bash roundup ./test/*-test.sh
