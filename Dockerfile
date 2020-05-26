FROM centos:7.8.2003

ARG GIT_URL="https://github.com/uccross/skyhook-ceph"
ARG GIT_REF="skyhook-luminous"
ARG EXTRA_PKGS=""

ADD . /

RUN yum install -y git wget && \
    git clone --branch $GIT_REF --depth 1 $GIT_URL ceph && \
    cd ceph && \
    ./install-preq.sh && \
    ./install-deps.sh && \
    sh -c 'if [ -n "$EXTRA_PKGS" ]; then apt-get install -y "$EXTRA_PKGS"; fi' && \
    yum clean all

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
