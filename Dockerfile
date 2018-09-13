FROM sshd

ARG user
ARG id

RUN apt-get update && apt-get install -y \
    nodejs \
    npm \
    ruby-dev

WORKDIR /tmp

COPY build_scripts/jekyllBashrc /tmp
RUN su ${user} -c 'cp /tmp/jekyllBashrc ~'
RUN su ${user} -c 'echo . ~/jekyllBashrc | tee -a ~/.bashrc'

COPY build_scripts/Gemfile .
COPY build_scripts/Gemfile.lock .
RUN gem install bundler 
RUN bundle install


