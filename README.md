# Docker SwiftLint
[![License](http://img.shields.io/:license-apache-blue.svg)](http://www.apache.org/licenses/LICENSE-2.0.html)
[![Build Status](https://travis-ci.org/saschpe/docker-swiftlint.svg?branch=master)](https://travis-ci.org/saschpe/docker-swiftlint)
[![Docker Pulls](https://img.shields.io/docker/pulls/saschpe/swiftlint.svg)](https://hub.docker.com/r/saschpe/swiftlint/)
[![Docker Build Status](https://img.shields.io/docker/build/saschpe/swiftlint.svg)](https://hub.docker.com/r/saschpe/swiftlint/)

Docker container based on Alpine Linux.


## Usage
Invoke the container just like *swiftlint* ifself:

    docker run --rm saschpe/swiftlint --help

Assuming you want to format all CMake files in a directory
*src*, a full example might look like this:

    cmake_files=$(find . \( -name CMakeLists.txt -o -name *.cmake \) -exec echo /opt/{} \;)
    docker run \
        --rm \
        --privileged=true \
        --volume ${PWD}:/opt \
        saschpe/swiftlint ${cmake_files}

Just put this into a script for easier invocation.


## Scripts
These scripts simplify various tasks related to container building and
publishing.

    .
    └─── scripts
        ├── docker
        │   ├── build           Build the container locally
        │   └── run             Run the container locally
        ├── inc.constants
        └── inc.functions


## License

    Copyright 2017 Sascha Peilicke

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
