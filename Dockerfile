FROM xxstop/base

MAINTAINER xxstop <xxstop@qq.com>

RUN apt-get install -y git zsh
RUN apt-get install -y curl 
RUN apt-get install -y tmux
RUN apt-get install -y wget
RUN apt-get install -y vim emacs

RUN git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh \
    && cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc \
    && chsh -s /bin/zsh
RUN git clone https://github.com/purcell/emacs.d.git ~/.emacs.d

WORKDIR /root/
