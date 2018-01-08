FROM quay.io/pires/docker-elasticsearch:6.1.1

MAINTAINER pjpires@gmail.com

# Override config, otherwise plug-in install will fail
ADD config /elasticsearch/config

# Set environment
ENV DISCOVERY_SERVICE elasticsearch-discovery

# Kubernetes requires swap is turned off, so memory lock is redundant
ENV MEMORY_LOCK false

ENV THREAD_POOL_INDEX_QUEUE_SIZE 200
ENV PROCESSORS 4
