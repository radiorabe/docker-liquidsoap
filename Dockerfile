FROM centos

RUN ["yum","update","-y"]
RUN ["yum","-y","install","epel-release"]
RUN ["rpm","-Uvh","http://li.nux.ro/download/nux/dextop/el7/x86_64/nux-dextop-release-0-5.el7.nux.noarch.rpm"]
RUN ["curl","-o","/etc/yum.repos.d/liquidsoap.repo","http://download.opensuse.org/repositories/home:/radiorabe:/liquidsoap/CentOS_7/home:radiorabe:liquidsoap.repo"]
RUN ["yum","-y","install","liquidsoap","sudo"]

RUN ["mkdir","/var/log/liquidsoap"]
RUN ["chown","liquidsoap:","/var/log/liquidsoap"]
RUN ["mkdir","/var/run/liquidsoap"]
RUN ["chown","liquidsoap:","/var/run/liquidsoap"]

WORKDIR /var/lib/liquidsoap
ENTRYPOINT ["/usr/bin/sudo","--user","liquidsoap","--preserve-env","liquidsoap"]
