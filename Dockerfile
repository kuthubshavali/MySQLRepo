FROM centos:latest
MAINTAINER Syed Mohammed
RUN yum -y update; yum clean all
RUN yum install -y MySQL-python
RUN mkdir -p /usr/local/mysqlcontainer/


