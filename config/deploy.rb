set :application, "rphenomenal2"
# RVM System wide
set :rvm_ruby_string, "ruby-1.9.3-p125@#{application}"
set :rvm_type, :system

require "rvm/capistrano"
require "bundler/capistrano"


set :host , "work-server.lt-servers.be"
set :user, "deployer"
set :deploy_to, "/var/www/#{application}"



# GIT
set :scm, "git"
set :repository, "git@github.com:phenomenal/rphenomenal.git"
set :branch, "Capify"
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
  
  
  task :plop do
    run "rvm info"
  end
end