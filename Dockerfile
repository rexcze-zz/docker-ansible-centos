FROM centos:7

ENV container docker
MAINTAINER Jakub Bittner <rexcze@gmail.com>

RUN yum install -y epel-release && \ 
    yum update -y && \
    yum install -y ansible ansible-lint libselinux-python systemd-networkd systemd-resolved && \
    yum clean all

VOLUME [ "/sys/fs/cgroup" ]

CMD ["/usr/sbin/init"]
