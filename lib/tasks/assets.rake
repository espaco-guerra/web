#encoding: UTF-8
namespace :assets do
  task :install_dependencies do
    Rake::Task["bower:install"].invoke
  end
  Rake::Task["precompile"].enhance [:install_dependencies]
end
