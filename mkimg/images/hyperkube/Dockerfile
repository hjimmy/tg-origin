#
# This is the official OpenShift CLI image. It can be used to get a CLI environment
# for OpenShift.
#
# The standard name for this image is openshift/origin-hyperkube
#
FROM openshift/origin-base:v3.11

COPY example.repo /etc/yum.repos.d/
RUN INSTALL_PKGS="origin-hyperkube" && \
    yum install install -y ${INSTALL_PKGS} && \
    rpm -V ${INSTALL_PKGS} && \
    yum clean all

LABEL io.k8s.display-name="OpenShift Kubernetes Server Commands" \
      io.k8s.description="OpenShift is a platform for developing, building, and deploying containerized applications." \
      io.openshift.tags="openshift,hyperkube"
