From centos:7

# Install make & gcc for building redis
RUN yum update -y && yum install -y gcc make && yum clean all

# Install Redis

ENV REDIS_VERSION 3.2.0

RUN cd /tmp && \
  curl -O http://download.redis.io/releases/redis-${REDIS_VERSION}.tar.gz && \
  tar zxfv redis-${REDIS_VERSION}.tar.gz && \
  cd redis-${REDIS_VERSION} && \
  make && \
  make install && \
  mkdir -p /etc/redis /data/redis && \
  cp -f redis.conf /etc/redis && \
  rm -rf /tmp/redis*
  
VOLUME ["/var/run/redis"]

EXPOSE 6379

CMD ["redis-server", "/etc/redis/redis.conf"]