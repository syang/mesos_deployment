# A CentOS 7 mesos master image. 

FROM centos:7

MAINTAINER SysCompass Team <dev@syscompass.org>


# Update and clean unnecessary package cache
RUN yum update && yum clean all

# Install common tools here, so that we can share cache
RUN yum install -y python-setuptools

# Install Mesos Packages
RUN \
 curl -sSfL http://repos.mesosphere.io/el/7/noarch/RPMS/mesosphere-el-repo-7-1.noarch.rpm --output /tmp/mesos.rpm && \
 curl -sSfL http://downloads.mesosphere.io/master/centos/7/mesos-0.21.1-py2.7-linux-x86_64.egg --output /tmp/mesos.egg && \
 yum localinstall -y -q /tmp/mesos.rpm && \
 easy_install --allow-hosts pypi.python.org /tmp/mesos.egg


