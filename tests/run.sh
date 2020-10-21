#!/usr/bin/env bash

python install.py

mg5_aMC --mode=MG5aMC_PythonMEs tests/test_MG5aMC_PythonMEs.mg5

mg5_aMC --mode=MG5aMC_PythonMEs tests/test_MG5aMC_TFMEs.mg5
