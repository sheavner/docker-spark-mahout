FROM sequenceiq/spark:1.2.1-ubuntu
MAINTAINER scott

RUN curl -s http://mirrors.advancedhosters.com/apache/mahout/0.9/mahout-distribution-0.9.tar.gz | tar -xz -C /usr/local/
RUN ln -sf /usr/local/mahout-distribution-0.9 /usr/local/mahout

ENV MAHOUT_HOME /usr/local/mahout
ENV MASTER http://localhost:7077/
ENV SPARK_MASTER_IP localhost

ADD ./mahout.tgz /usr/local
RUN ln -sf /usr/local/mahout/bin/mahout /usr/local/bin

RUN mkdir -p /host
VOLUME /host

CMD ["/etc/bootstrap.sh", "-d"]
