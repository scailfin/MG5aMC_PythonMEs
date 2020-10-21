ARG BASE_IMAGE=scailfin/madgraph5-amc-nlo:mg5_amc2.8.1
FROM ${BASE_IMAGE} as base

USER root
SHELL [ "/bin/bash", "-c" ]

COPY MG5aMC_PythonMEs /usr/local/MG5_aMC_v2_8_1/PLUGIN/MG5aMC_PythonMEs

ENTRYPOINT ["/bin/bash", "-l", "-c"]
CMD ["/bin/bash"]
