FROM xxstop/base

MAINTAINER xxstop <xxstop@qq.com>

ADD http://download.oray.com/peanuthull/embed/phddns_raspberry.tgz /tmp/

RUN cd /tmp && tar xzf phddns_raspberry.tgz
RUN cd /tmp/phddns2 && ./oraynewph start

EXPOSE 16062
