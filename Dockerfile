FROM xxstop/base

MAINTAINER xxstop <xxstop@qq.com>

### zsh
RUN apt-get install -y git zsh
RUN git clone --depth=1 https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh \
    && cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc \
    && chsh -s /bin/zsh

### wget/curl
RUN apt-get install -y curl wget

### tmux
RUN apt-get install -y tmux

### editor
RUN apt-get install -y vim emacs
RUN git clone --depth=1 https://github.com/purcell/emacs.d.git ~/.emacs.d

### php
RUN apt-get install -y php

### composer
ADD https://getcomposer.org/download/1.2.0/composer.phar /usr/local/bin/composer
RUN chmod +x /usr/local/bin/composer
RUN composer config -g repo.packagist composer https://packagist.phpcomposer.com

### autojump
RUN git clone --depth=1 git://github.com/joelthelion/autojump.git ~/.autojump
RUN ~/.autojump/install.py


WORKDIR /root/
