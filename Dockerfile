FROM java:7
MAINTAINER zhijie.lv <401379957@qq.com>

RUN mkdir -p /opt/codis
ENV CODIS_HOME /opt/codis

ADD . $CODIS_HOME
RUN chmod a+x $CODIS_HOME/redis-benchmark
ENV PATH $PATH:$CODIS_HOME

WORKDIR $CODIS_HOME
