FROM centos:latest
MAINTAINER Syed Mohammed
RUN sudo yum -y update
RUN sudo yum install -y mysql-server
RUN GRANT ALL PRIVILEGES ON *.* TO 'monty'@'localhost' IDENTIFIED BY 'monty' WITH GRANT OPTION;
RUN sudo yum install -y python-dev libmysqlclient-dev
RUN sudo yum install -y python3.4
RUN sudo yum install -y python-pip
RUN sudo yum install MySQL-python
RUN sudo yum install -y git
RUN mkdir -p /usr/local/mysqlcontainer/
RUN git clone https://github.com/kuthubshavali/MySQLRepo.git


