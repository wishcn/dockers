FROM xxstop/base
MAINTAINER xxstop <xxstop@qq.com>

ADD https://copr.fedorainfracloud.org/coprs/librehat/shadowsocks/repo/epel-7/librehat-shadowsocks-epel-7.repo /etc/yum/yum.repos.d/

RUN yum update
RUN yum -y install shadowsocks-libev
