#!/usr/bin/env bash

mg5_DIR="/usr/local/MG5_aMC_v2_8_1"

if [[ ! -d "${mg5_DIR}/PLUGIN/MG5aMC_PythonMEs" ]]; then
  cp -r MG5aMC_PythonMEs "${mg5_DIR}/PLUGIN/"
fi

mg5_aMC --mode=MG5aMC_PythonMEs tests/test_MG5aMC_PythonMEs.mg5
