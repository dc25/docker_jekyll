FROM sshd

RUN apt-get update && apt-get install -y \
    g++ \
    make \
    nodejs \
    npm \
    ruby \
    ruby-dev

WORKDIR /tmp

COPY build_scripts/Gemfile .
COPY build_scripts/Gemfile.lock .
RUN gem install bundler 
RUN bundle install
