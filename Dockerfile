FROM centos:latest
MAINTAINER Syed Mohammed
RUN yum -y update
RUN yum -y install mysql-server mysql pwgen supervisor bash-completion psmisc net-tools; yum clean all
RUN yum install -y MySQL-python
ADD CREATE USER 'monty'@'localhost' IDENTIFIED BY 'monty';
RUN yum install -y git
RUN mkdir -p /usr/local/mysqlcontainer/
RUN git clone https://github.com/kuthubshavali/MySQLRepo.git
WORKDIR /usr/local/mysqlcontainer/


