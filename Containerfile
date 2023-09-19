FROM docker.io/redhat/ubi8
MAINTAINER Romeo <mrpaules@yahoo.co.uk>

# Install cool software
RUN yum --assumeyes update && \
    yum --assumeyes install nmap iproute procps iputils && \
    bash && \
    yum clean all

ENTRYPOINT ["/usr/bin/nmap"]
CMD ["-sn", "172.17.0.0/24"] 
