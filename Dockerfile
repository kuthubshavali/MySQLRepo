FROM centos:latest
MAINTAINER Syed Mohammed
RUN yum -y update; yum clean all
RUN yum install -y wget
RUN wget http://repo.mysql.com/mysql-community-release-el6-5.noarch.rpm
RUN rpm -ivh mysql-community-release-el6-5.noarch.rpm
RUN yum -y install mysql-server
RUN yum install -y MySQL-python
RUN yum install -y git
RUN mkdir -p /usr/local/mysqlcontainer/
RUN git clone https://github.com/kuthubshavali/MySQLRepo.git
WORKDIR /usr/local/mysqlcontainer/


