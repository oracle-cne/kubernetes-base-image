# Oracle Container Host for Kubernetes Base Image

This is a repackage of a common container image base layer.  The only goal is
to produce an exact copy of an existing base image with a unique hash.  All
container images that are packaged with Oracle Container Host for Kubernetes
(OCK) use this image as a base layer.  OCK packages container images that are
required for a typical Kubernetes deployment into a read only portion of the
root filesystem and are atomically replaced when performing an update.  Tools
like `podman` and `cri-o` attempt to re-use as many existing container image
layers as possible, including layers in any read-only locations.  Container
images that happen to share a layer with an image baked into OCK can have that
layer yanked out from underneath of it during an OS update, corrupting the
image.  Using a base image with a unique hash avoids this potential issue by
ensuring that no other container images can use that layer.  *Do not* use this
image as a base layer for any container images except for those that are built
into OCK.  *Do* use it for all container images that are.

## Contributing

This project welcomes contributions from the community. Before submitting a pull request, please [review our contribution guide](./CONTRIBUTING.md)

## Security

Please consult the [security guide](./SECURITY.md) for our responsible security vulnerability disclosure process

## License

Copyright (c) 2025 Oracle and/or its affiliates.

Released under the Universal Permissive License v1.0 as shown at
<https://oss.oracle.com/licenses/upl/>.
