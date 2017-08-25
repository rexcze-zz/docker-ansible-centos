FROM centos:7

ENV container docker
MAINTAINER Jakub Bittner <rexcze@gmail.com>

RUN yum update -y && yum install -y systemd-networkd libselinux-python

VOLUME [ "/sys/fs/cgroup" ]

CMD ["/usr/sbin/init"]
