
# Simple Docker file application
FROM ubuntu:latest
MAINTAINER shiva.chikkam@gmail.com
RUN echo "Welcome To Docker First APP From cachenow"
RUN apt-get update
RUN apt-get -y install iputils-ping
 
RUN apt-get -y install unzip wget netcat
ENV REMOTE_SOFT_PATH=/softwares/
ENV JAVA_HOME=/softwares/jdk1.8.0_181/bin/
ENV JRE_HOME=/softwares/jdk1.8.0_181/bin/
ENV PATH=$PATH:/softwares/jdk1.8.0_181/bin/
RUN echo $PATH
RUN mkdir ${REMOTE_SOFT_PATH}
RUN echo  ${REMOTE_SOFT_PATH}
RUN wget --no-cookies --no-check-certificate --header "Cookie: oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u181-b13/96a7b8442fe848ef90c96a2fad6ed6d1/jdk-8u181-linux-x64.tar.gz"
RUN echo mv jdk-8u181-linux-x64.tar.gz  ${REMOTE_SOFT_PATH}
RUN mv jdk-8u181-linux-x64.tar.gz ${REMOTE_SOFT_PATH}
RUN cd ${REMOTE_SOFT_PATH} && tar -xzf jdk-8u181-linux-x64.tar.gz
#ADD jdk1.8.0_45 ${REMOTE_SOFT_PATH}/jdk1.8.0_45

ADD http://www.h2database.com/h2-2017-06-10.zip /softwares/
RUN cd softwares && unzip h2-2017-06-10.zip
RUN cd softwares/h2/bin
COPY start.sh /
RUN  chmod +x ./start.sh
#VOLUME ["/volumes"]
#RUN nohup java -cp h2*.jar org.h2.tools.Server & 

CMD echo "first"
CMD echo "Last one gets executed"
#CMD sh ./start.sh
EXPOSE 8082/tcp
#ENTRYPOINT ["/bin/bash"]
#CMD ["./start.sh"]
#ENTRYPOINT ["echo", "Hello world"]
#ENTRYPOINT ["ping","-c","3"]
#CMD ["localhost"]
#ENTRYPOINT top -b
#CMD ["--ignored-param1"]
ENTRYPOINT ["./start.sh"]
