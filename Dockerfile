FROM xxstop/base

MAINTAINER xxstop <xxstop@qq.com>

RUN echo "deb http://repozytorium.mati75.eu/raspbian jessie-backports main contrib non-free" >> /etc/apt/sources.list
RUN gpg --keyserver pgpkeys.mit.edu --recv-key CCD91D6111A06851
RUN gpg --armor --export CCD91D6111A06851 | apt-key add -
RUN apt-get update
RUN apt-get install git-core openssl ca-certificates nginx php7.0 php7.0-fpm php7.0-mysql -y

ADD https://getcomposer.org/composer.phar /usr/local/bin/composer
RUN chmod a+x /usr/local/bin/composer
RUN composer config -g repo.packagist composer https://packagist.phpcomposer.com

EXPOSE 80 8000
