FROM ubuntu-upstart:latest
MAINTAINER Tetiana Korchak

RUN apt-get update && apt-get install -y
RUN apt-get install vim git python python-pip -y

EXPOSE 80

#RUN apt-get install default-jre -y & apt-get install default-jdk -y
#RUN wget http://www.us.apache.org/dist/kafka/0.8.2.2/kafka_2.9.2-0.8.2.2.tgz
#RUN mkdir kafka
#RUN tar xvzf kafka_2.9.2-0.8.2.2.tgz --strip 1 -C kafka/
#RUN /kafka/bin/kafka-server-start.sh /kafka/config/server.properties

RUN git clone https://git.symcpe.net/AA/integration_test.git
ADD pckg_py.sh .
RUN chmod +x pckg_py.sh
RUN ./pckg_py.sh
