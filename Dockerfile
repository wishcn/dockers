FROM xxstop/base

MAINTAINER xxstop <xxstop@qq.com>

### zsh
RUN apt-get install -y git zsh
RUN git clone --depth=1 https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh \
    && cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc \
    && chsh -s /bin/zsh

### wget/curl
RUN apt-get install -y curl wget

### editor
RUN apt-get install -y vim emacs
RUN git clone --depth=1 https://github.com/purcell/emacs.d.git ~/.emacs.d

### php
RUN apt-get install -y php

### composer
ADD https://getcomposer.org/download/1.2.0/composer.phar /usr/local/bin/composer
RUN chmod +x /usr/local/bin/composer
RUN composer config -g repo.packagist composer https://packagist.phpcomposer.com

### python
RUN apt-get install -y python-pip

### phpext
RUN apt-get install -y php7.0-mbstring
RUN apt-get install -y php7.0-dom

### autojump
# RUN git clone --depth=1 git://github.com/joelthelion/autojump.git /usr/local/share/autojump
# RUN /usr/local/share/autojump/install.py

### composer config
RUN composer config -g repositories.zbjpkg composer "http://ppkg.zbjwork.com/"
RUN composer config -g secure-http false

EXPOSE 22 
EXPOSE 80

WORKDIR /root/
