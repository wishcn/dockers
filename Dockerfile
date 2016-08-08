FROM xxstop/base

MAINTAINER xxstop <xxstop@qq.com>

RUN apt-get install -y git zsh wget
RUN wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh

