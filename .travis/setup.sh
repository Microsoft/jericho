#!/bin/bash

set -e

if [[ $TRAVIS_OS_NAME == "osx" ]]; then
    pip3 install virtualenv
    virtualenv -p python3 venv
    . ./venv/bin/activate
fi

pip install .
pip install pytest
