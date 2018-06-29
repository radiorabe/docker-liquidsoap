# docker-liquidsoap
Dockerfile for liquidsoap

## Build
```
docker build -t liquidsoap https://github.com/radiorabe/docker-liquidsoap.git
```

## Run
```
docker run -ti --rm liquidsoap --version
docker run -ti --rm -v $PWD:/var/lib/liquidsoap liquidsoap script.liq
```
