FROM sshd

RUN apt-get update && apt-get install -y \
    g++ \
    make \
    nodejs-legacy \
    npm \
    ruby \
    ruby-dev

WORKDIR /tmp

COPY build_scripts/Gemfile .
COPY build_scripts/install_bundler .
RUN ./install_bundler

