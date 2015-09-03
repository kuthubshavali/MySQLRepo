FROM centos:latest
MAINTAINER Syed Mohammed
RUN yum -y update
RUN yum -y install mysql-server; yum clean all
RUN yum install -y MySQL-python
RUN /usr/sbin/mysqld &     sleep 10s &&    echo "CREATE USER 'monty'@'localhost' IDENTIFIED BY 'monty'"| mysql
RUN yum install -y git
RUN mkdir -p /usr/local/mysqlcontainer/
RUN git clone https://github.com/kuthubshavali/MySQLRepo.git
WORKDIR /usr/local/mysqlcontainer/


