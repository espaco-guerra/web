# encoding: UTF-8
begin
  desc 'Task to run on CI: runs Rubocop cops, RSpec specs and Konacha specs'
  task ci: %i(rubocop spec codeclimate-test-reporter brakeman konacha)

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

  task :konacha do
    MY_DIR = File.expand_path(File.join(File.dirname(__FILE__), '../../'))
    ENV['PATH'] = "#{ENV['PATH']}:#{MY_DIR}/bin:#{MY_DIR}/bin/#{`uname`}"
    system("PATH=#{ENV['PATH']} bundle exec rake konacha:run")
  end
rescue LoadError => e
  STDERR.puts "Error: #{e.message}"
  STDERR.puts e.backtrace
end
