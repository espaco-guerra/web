#encoding: UTF-8
begin
  desc "Task to run on CI: runs RSpec specs and Konacha specs"
  task :ci => [:spec, :"konacha:run"]

  task :default => :ci
rescue LoadError => e
  puts "Error: #{e.message}"
  puts e.backtrace
end
