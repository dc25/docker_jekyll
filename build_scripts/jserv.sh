#! /bin/bash
bundle install
bundle exec jekyll serve -H 0.0.0.0 --baseurl "" --destination /tmp/_site
