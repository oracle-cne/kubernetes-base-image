FROM container-registry.oracle.com/os/oraclelinux:8
RUN dnf update -y && dnf clean all
WORKDIR /
CMD ["/usr/bin/bash"]
