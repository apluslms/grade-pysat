FROM apluslms/grade-python:3.9-4.8-4.6

ARG PYSAT_VERSION=0.1.8.dev7

RUN pip_install python-sat==$PYSAT_VERSION
