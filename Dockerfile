FROM centos
RUN yum -y install git
RUN git clone https://github.com/Likith2919/JavaWeb.git
WORKDIR /JavaWeb
RUN yum -y install maven
RUN mvn package
ADD https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.94/bin/apache-tomcat-7.0.94.tar.gz .
RUN tar xvf apache-tomcat-7.0.94.tar.gz
COPY home/centos/JavaWeb/target/WebAppCal-0.0.6.war /usr/local/tomcat/webapps
EXPOSE 8080
