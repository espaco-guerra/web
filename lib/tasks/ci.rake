# encoding: UTF-8

begin
  desc 'Task to run on CI: runs Rubocop cops, RSpec specs and brakeman'
  task ci: %i[rubocop spec codeclimate-test-reporter brakeman]

  task default: :ci

  task :rubocop do
    sh 'bundle exec rubocop'
  end

  task :brakeman do
    sh 'bundle exec brakeman -z'
  end

  task :'codeclimate-test-reporter' do
    sh 'if [[ -n ${CODECLIMATE_REPO_TOKEN} ]];\
      then bundle exec codeclimate-test-reporter;\
      fi'
  end
rescue LoadError => e
  STDERR.puts "Error: #{e.message}"
  STDERR.puts e.backtrace
end
