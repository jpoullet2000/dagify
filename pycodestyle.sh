#!/bin/bash
XARGS="xargs -0 -t pycodestyle"
for pyfile in `ls ./dagify/*.py`; do python dev/stripspace.py $pyfile; done
find ./dagify/ -name '*.py' -print0 | ${XARGS} --ignore=E501
