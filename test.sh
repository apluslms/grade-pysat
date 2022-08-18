#!/bin/sh

echo " --------- Building test image --------------"
docker build -t apluslms/grade-pysat:test .

echo " --- Solving a simple problem with PySAT ---"
if docker run --rm -it -v `pwd`:/submission apluslms/grade-pysat:test python3 test_pysat.py; then
    echo " -- OK!"
else
    echo " !!! ERROR !!! "
fi
