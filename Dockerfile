FROM centos:latest
MAINTAINER Syed Mohammed
RUN yum -y update; yum clean all
RUN yum install -y MySQL-python
RUN yum install -y git
RUN mkdir -p /usr/local/mysqlcontainer/
RUN git clone https://github.com/kuthubshavali/MySQLRepo.git
WORKDIR /usr/local/mysqlcontainer/


