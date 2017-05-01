This repository holds pre-built python wheels intended for faster CI purposes.

# Getting started

## Adding packages

### Simple
`docker run -it --rm -v "$(pwd):/wheelhouse" 17media/python:3.5.3-builder PIP_PACKAGES`

### Extra build dependencies
`docker run -it --rm -v "$(pwd):/wheelhouse" $(echo "FROM 17media/python:3.5.3-builder" | docker build --build-arg APK_BUILD_DEPS="$APK_BUILD_DEPS" -q -) PIP_PACKAGES`


## Using packages

`pip install --find-links https://github.com/17media/pip-wheelhouse/blob/master/index.html PIP_PACKAGES`
