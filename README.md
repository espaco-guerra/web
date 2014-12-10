# EspacoGuerra Web [![Build Status](https://snap-ci.com/espaco-guerra/web/branch/master/build_image)](https://snap-ci.com/espaco-guerra/web/branch/master) [![Dependency Status](https://gemnasium.com/espaco-guerra/web.svg)](https://gemnasium.com/espaco-guerra/web) [![Code Climate](https://codeclimate.com/github/espaco-guerra/web/badges/gpa.svg)](https://codeclimate.com/github/espaco-guerra/web) [![Test Coverage](https://codeclimate.com/github/espaco-guerra/web/badges/coverage.svg)](https://codeclimate.com/github/espaco-guerra/web)
=================

This is a rails application to host EspacoGuerra's web version. It'll provide mostly APIs for mobile versions as well as the JS version based on [Three.js](http://threejs.org). The rest will be cosmetics to help users get excited with the game.

## Requirements:

* [Ruby](https://www.ruby-lang.org/en/) 2.1.4
* [Rubygems](https://rubygems.org/) 2.3.4+
* [Bundler](http://bundler.io/) 1.7.5+
* [Node.js](https://nodejs.org/) 0.10.13+
* [NPM](https://www.npmjs.org/) 1.3.2+
* [Bower](https://github.com/bower/bower) 1.3.12+

## How to run the server:

Simply run `bundle install && bundle exec foreman start`.
Then hit 'http://0.0.0.0:8080'.

## How to run the test suite

Simply run `bundle install && bundle exec rake bower:install && bundle exec rake`

