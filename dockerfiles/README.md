Dockerfiles for components

This directory is to build home grown Dockerfiles so that Ansible (or other
orchestration tools) can deploy and config.
  Vagrantfile - [Prepare the Vagrant-boot2docker environment](https://github.com/YungSang/boot2docker-vagrant-box)

If Distro vendors or open source community (such as mesos) distribute their
Dockerfile, the Ansible (or other orchestration tool users) should consider
using those. Moreover, they should consider how to keep their code consistent
for different Dockerfile sources.

Vagrantfile is used to create boot2docker VM so as to build/test/push docker images
