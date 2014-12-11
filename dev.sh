#!/usr/bin/env sh
bundle exec rake konacha:serve & bundle exec guard & bundle exec foreman start
