#! /bin/bash


function setup_bashrc
{
cat > ~/jekyllBashrc << 'DONE'
alias jserv='bundle exec jekyll serve -H 0.0.0.0'
alias jbuild='bundle exec jekyll build'
alias bupd='bundle update'
alias binst='sudo bundle install'
DONE

echo . ~/jekyllBashrc | tee -a ~/myBashrc
}

setup_bashrc

