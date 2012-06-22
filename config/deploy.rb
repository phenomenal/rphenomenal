require "bundler/capistrano"

set :application, "rphenomenal2"
set :host , "work-server.lt-servers.be"
set :user, "deployer"
set :deploy_to, "/var/www/#{application}"

# RVM System wide
set :rvm_ruby_string, "ruby-1.9.3-p125@#{application}"
require "rvm/capistrano"
set :rvm_type, :system

# GIT
set :scm, "git"
set :repository, "git@github.com:phenomenal/rphenomenal.git"
set :branch, "master"
set :deploy_via, :remote_cache
default_run_options[:pty] = true
ssh_options[:forward_agent] = true

role :app, "#{host}" 
role :web, "#{host}" 
role :db,  "#{host}", :primary => true


namespace :deploy do
  %w[start stop restart].each do |command|
    desc "#{command} unicorn server"
    task command, :roles=>:app do
      puts "/etc/init.d/unicorn_#{application} #{command}"
    end
  end
  
  

end