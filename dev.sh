#!/usr/bin/env sh
npm install
bundle
bundle exec foreman start -f Procfile.dev
