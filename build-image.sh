#! /bin/bash

podman build --squash-all -t container-registry.oracle.com/olcne/ock:base-image .
