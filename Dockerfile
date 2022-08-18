FROM apluslms/grade-python:latest

ARG PYSAT_VERSION=0.1.7.dev19

RUN pip_install python-sat==$PYSAT_VERSION
