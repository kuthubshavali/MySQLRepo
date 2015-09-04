FROM centos:latest
MAINTAINER Syed Mohammed
RUN yum -y update; yum clean all
RUN yum install -y wget
RUN wget http://repo.mysql.com/mysql-community-release-el6-5.noarch.rpm
RUN rpm -ivh mysql-community-release-el6-5.noarch.rpm
RUN yum -y install mysql-server
RUN mkdir -p /usr/local/mysqlcontainer/


