# encoding: UTF-8
begin
  desc 'Task to run on CI: runs Rubocop cops, RSpec specs and Konacha specs'
  task ci: %i(rubocop spec konacha:run)

  task default: :ci

  task :rubocop do
    sh 'bundle exec rubocop'
  end
rescue LoadError => e
  STDERR.puts "Error: #{e.message}"
  STDERR.puts e.backtrace
end
