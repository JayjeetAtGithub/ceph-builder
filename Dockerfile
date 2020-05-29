FROM centos:7.8.2003

ARG GIT_URL="https://github.com/aditigupta17/skyhookdm-ceph"
ARG GIT_REF="nautilus"
ARG EXTRA_PKGS=""

ADD . /

RUN ./install-preq.sh && \
    git clone --branch $GIT_REF --depth 1 $GIT_URL ceph && \
    cd ceph && \
    ./install-deps.sh && \
    yum clean all

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
