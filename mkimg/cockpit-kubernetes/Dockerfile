FROM docker.io/cs2cneokylin/ns76-base-aarch64:latest

COPY example.repo /etc/yum.repos.d/
RUN yum clean all && \
    yum install --setopt=tsflags=nodocs util-linux cockpit-ws cockpit-bridge cockpit-system cockpit-kubernetes -y && \
    yum clean all

ARG VERSION
ARG INSTALLER="yum"

ADD . /container
RUN /container/install.sh

CMD ["/usr/libexec/cockpit-kube-launch"]
