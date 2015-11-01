FROM aiyara/alpine:3.2
MAINTAINER Chanwit Kaewkasi <chanwit@gmail.com>

ADD swarm /bin/swarm
RUN chmod +x /bin/swarm

ENV SWARM_HOST :2375
EXPOSE 2375

VOLUME /.swarm

ENTRYPOINT ["/bin/swarm"]
CMD ["--help"]
