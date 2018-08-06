# Dockerfile for liquidsoap

[Liquidsoap](http://liquidsoap.fm/) in a [CentOS](https://centos.org/) based container image.

## Build
```bash
docker build -t liquidsoap https://github.com/radiorabe/docker-liquidsoap.git
```

## Run
```bash
docker run -ti --rm radiorabe/liquidsoap --version
docker run -ti --rm -v `pwd`:/var/lib/liquidsoap radiorabe/liquidsoap script.liq
```

## License
This container image and it's definition is free software: you can redistribute
it and/or modify it under the terms of the GNU Affero General Public License as
published by the Free Software Foundation, version 3 of the License.

## Copyright
Copyright (c) 2018 [Radio Bern RaBe](http://www.rabe.ch)
