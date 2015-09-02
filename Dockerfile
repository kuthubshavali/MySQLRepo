FROM centos:latest
MAINTAINER Syed Mohammed
RUN yum -y update
RUN yum -y install mysql-server mysql pwgen supervisor bash-completion psmisc net-tools; yum clean all
RUN yum python3-deve
RUN yum install -y python3.4
RUN yum install -y python-pip
RUN yum install MySQL-python
RUN yum install -y git
RUN mkdir -p /usr/local/mysqlcontainer/
RUN git clone https://github.com/kuthubshavali/MySQLRepo.git


