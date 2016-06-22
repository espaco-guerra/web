#!/usr/bin/env bash
set e

MY_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd ${MY_DIR}

if [[ -z `which ruby` ]]; then
  echo "Missing ruby in your path. Please install the correct version and try again" && exit 1
fi

if [[ -z `which gem` ]]; then
  echo "Missing rubygems in your path. Please install the correct version and try again" && exit 1
fi

if [[ -z `which npm` ]]; then
  echo "Installing npm..."
  ((brew --version > /dev/null) && (brew install npm > /dev/null))
  ((apt-get --version > /dev/null) && (apt-get install -y nodejs npm))
fi

npm install

if [[ -z `which bundle` ]]; then
  echo "Installing bundler..."
  gem --version &> /dev/null && gem install bundler &> /dev/null
fi
bundle

export PATH=${MY_DIR}/bin:${PATH}
bundle exec foreman start -f Procfile.dev
