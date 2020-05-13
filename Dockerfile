FROM devbase

ARG user
ARG id

RUN sudo apt-get update 
RUN sudo apt-get install -y \
    ruby-dev \
    zlib1g-dev

COPY build_scripts/install_npm.sh /tmp
RUN /tmp/install_npm.sh

COPY build_scripts/install_typescript.sh /tmp
RUN /tmp/install_typescript.sh

WORKDIR /tmp
COPY build_scripts/Gemfile /tmp
RUN sudo gem install bundler 
RUN sudo bundle install

COPY build_scripts/jekyllBashrc /tmp
RUN cp /tmp/jekyllBashrc ~
RUN echo . ~/jekyllBashrc | tee -a ~/.bashrc

