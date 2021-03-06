# frozen_string_literal: true

begin
  desc 'Task to run on CI: runs Rubocop cops, RSpec specs and brakeman'
  task ci: %i[rubocop spec codeclimate-test-reporter brakeman]

  task default: :ci

  task :rubocop do
    sh 'bundle exec rubocop'
  end

  task :brakeman do
    sh 'bundle exec brakeman -z --no-pager'
  end

  task :'codeclimate-test-reporter' do
    sh 'if [[ -n ${CODECLIMATE_REPO_TOKEN} ]];\
      then bundle exec codeclimate-test-reporter;\
      fi'
  end
rescue LoadError => e
  warn "Error: #{e.message}"
  warn e.backtrace
end
