FROM alpine

LABEL maintainer="RaBe IT Reaktion <it@rabe.ch>"
LABEL vendor="Radio Bern RaBe <http://rabe.ch>"

RUN apk add --no-cache \
    alsa-lib-dev \
    coreutils \
    g++ \
    lame-dev \
    libmad-dev \
    m4 \
    make \
    musl-dev \
    opam \
    pcre-dev \
    pkgconfig \
    taglib-dev \
 && adduser -D liquidsoap \
 && mkdir -p /var/{log/liquidsoap,run/liquidsoap} \
 && chown liquidsoap /var/{log/liquidsoap,run/liquidsoap}

USER liquidsoap

ENV OCAML_VERSION 4.07.0
ENV PATH /home/liquidsoap/.opam/${OCAML_VERSION}/bin:${PATH}
RUN opam init --disable-sandboxing --auto-setup \
 && opam switch create ${OCAML_VERSION} \
 && opam install --yes alsa cry lame mad taglib \
 && opam clean

ENV LS_VERSION 1.3.7
RUN opam install --yes liquidsoap.${LS_VERSION} \
 && opam clean

WORKDIR /var/lib/liquidsoap

ENTRYPOINT ["liquidsoap"]
