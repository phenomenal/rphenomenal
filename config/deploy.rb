set :rvm_ruby_string, 'ruby-1.9.3-p125@rphenomenal'
set :rvm_type, :system #Install rvm system wide

require "bundler/capistrano"
require "rvm/capistrano"

server "work-server.lt-servers.be", :web, :app, :db, :primary => true
set :application, "rphenomenal"
set :user, "capistrano"
set :deploy_to, "/var/www/#{application}"
set :deploy_via, :remote_cache


set :scm, "git"
set :repository, "git@github.com:phenomenal/rphenomenal.git"
set :branch, "master"

ssh_options[:forward_agent] = true

namespace :deploy do
  task :setup do
   puts "Setup #{application}"
   res=run "rvm info"
   puts res 
  end
end