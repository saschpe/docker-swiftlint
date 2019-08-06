# Docker SwiftLint
[![License](http://img.shields.io/:license-apache-blue.svg)](http://www.apache.org/licenses/LICENSE-2.0.html)
[![Build Status](https://travis-ci.org/saschpe/docker-swiftlint.svg?branch=master)](https://travis-ci.org/saschpe/docker-swiftlint)
[![Docker Pulls](https://img.shields.io/docker/pulls/saschpe/swiftlint.svg)](https://hub.docker.com/r/saschpe/swiftlint/)
[![Docker Build Status](https://img.shields.io/docker/build/saschpe/swiftlint.svg)](https://hub.docker.com/r/saschpe/swiftlint/)

SwiftLint container based on Alpine Linux.


## Usage
Invoke the container just like *swiftlint* ifself:

```bash
docker run --rm saschpe/swiftlint version
```

Assuming you want to lint all Swift files in a directory
*src*, a full example might look like this:

```bash
cd src/
docker run \
    --rm \
    --security-opt label=disable \
    --volume ${PWD}:/opt \
    --workdir /opt \
    saschpe/swiftlint
```

Just put this into a script for easier invocation.


## Development
To build the container image with with the default SwiftLint version, invoke:

```bash
./scripts/build
```


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
