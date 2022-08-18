FROM apluslms/grade-python:3.9-4.5-4.3

ARG PYSAT_VERSION=0.1.7.dev19

RUN pip_install python-sat==$PYSAT_VERSION
