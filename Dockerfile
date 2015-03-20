FROM ubuntu:trusty

RUN \
    apt-get update && \
    DEBIAN_FRONTEND=noninteractive \
        apt-get -y install \
            gearman-job-server \
            gearman-tools
    && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

EXPOSE 4730

ENTRYPOINT [ "gearmand" ]