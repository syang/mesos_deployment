# A CentOS 7 Zookeeper Image from CDH 5

FROM centos:7

MAINTAINER "Compass Team" <dev@syscompass.org>

# Update and clean unnecessary package cache
RUN yum update && yum clean all

# Install common tools here, so that we can share cache
RUN yum install -y python-setuptools

# Install CDH packages
RUN yum install -y curl java-1.7.0-openjdk rpm && \
 curl -sSfL http://archive-primary.cloudera.com/cdh5/one-click-install/redhat/6/x86_64/cloudera-cdh-5-0.x86_64.rpm --output /tmp/cdh.rpm &&\
 curl -sSfL http://archive-primary.cloudera.com/cdh5/redhat/6/x86_64/cdh/RPM-GPG-KEY-cloudera --output /tmp/cdh.key && \
 yum localinstall -y -q /tmp/cdh.rpm && \
 rpm --import /tmp/cdh.key


# Install Zookeeper and its pre-requisites
RUN yum install -y -q zookeeper-server
