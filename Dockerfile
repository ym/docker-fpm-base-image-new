FROM debian:wheezy

WORKDIR /root
USER root

RUN sudo apt-get -qq update                                                                && \
    sudo apt-get -y install ruby-dev rubygems build-essential                              && \
    sudo /usr/bin/gem install --verbose fpm

CMD ["/bin/bash"]