web: bundle exec unicorn -p ${PORT}
konacha: [ -z ${DEV_ENV+x} ] || bundle exec rake konacha:serve
guard: [ -z ${DEV_ENV+x} ] || bundle exec guard
