FROM apluslms/grade-python:latest

ARG PYSAT_VERSION=0.1.8.dev7

RUN pip_install python-sat==$PYSAT_VERSION
