FROM devbase

RUN sudo apt-get update 
RUN sudo apt-get install -y \
    ruby-dev \
    zlib1g-dev

COPY --chown=$USER build_scripts/install_npm.sh /tmp
RUN /tmp/install_npm.sh

COPY --chown=$USER build_scripts/install_typescript.sh /tmp
RUN /tmp/install_typescript.sh


RUN sudo gem install bundler 

COPY --chown=$USER build_scripts/setup_home.sh /tmp
RUN /tmp/setup_home.sh

# EXPOSE 4000

