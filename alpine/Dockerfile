FROM alpine

LABEL maintainer="RaBe IT Reaktion <it@rabe.ch>"
LABEL vendor="Radio Bern RaBe <http://rabe.ch>"

RUN apk add --no-cache \
    coreutils \
    m4 \
    make \
    musl-dev \
    opam \
    pcre-dev \
    pkgconfig \
 && adduser -D liquidsoap \
 && mkdir -p /var/{log/liquidsoap,run/liquidsoap} \
 && chown liquidsoap /var/{log/liquidsoap,run/liquidsoap}

USER liquidsoap

ENV LS_VERSION 1.4.2
ENV OCAML_VERSION 4.10.0
ENV PATH /home/liquidsoap/.opam/${OCAML_VERSION}/bin:${PATH}

RUN opam init --disable-sandboxing --auto-setup \
 && opam switch create ${OCAML_VERSION} \
 && opam install --yes liquidsoap.${LS_VERSION} \
 && opam clean

WORKDIR /var/lib/liquidsoap

ENTRYPOINT ["liquidsoap"]
