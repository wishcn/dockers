FROM xxstop/base

MAINTAINER xxstop <xxstop@qq.com>

RUN echo "deb http://repozytorium.mati75.eu/raspbian jessie-backports main contrib non-free" >> /etc/apt/sources.list
RUN gpg --keyserver pgpkeys.mit.edu --recv-key CCD91D6111A06851
RUN gpg --armor --export CCD91D6111A06851 | apt-key add -
RUN apt-get update
RUN apt-get install nginx php7.0 php7.0-fpm php7.0-mysql -y

EXPOSE 80 8000
