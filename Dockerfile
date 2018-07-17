FROM centos:7

LABEL maintainer="RaBe IT Reaktion <it@rabe.ch>"
LABEL vendor="Radio Bern RaBe <http://rabe.ch>"

RUN yum update -y \
 && yum install -y \
    epel-release \
    http://li.nux.ro/download/nux/dextop/el7/x86_64/nux-dextop-release-0-5.el7.nux.noarch.rpm \
 && curl -o /etc/yum.repos.d/liquidsoap.repo http://download.opensuse.org/repositories/home:/radiorabe:/liquidsoap/CentOS_7/home:radiorabe:liquidsoap.repo \
 && yum install -y \
    liquidsoap \
 && yum clean all \
 && mkdir -p /var/{log/liquidsoap,run/liquidsoap} \
 && chown liquidsoap /var/{log/liquidsoap,run/liquidsoap}

USER liquidsoap

WORKDIR /var/lib/liquidsoap

ENTRYPOINT ["liquidsoap"]
