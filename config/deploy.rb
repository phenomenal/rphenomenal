set :application, "rphenomenal"

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
set :branch, "master"
set :deploy_via, :remote_cache
default_run_options[:pty] = true
ssh_options[:forward_agent] = true

# Roles
role :app, "#{host}" 
role :web, "#{host}" 
role :db,  "#{host}", :primary => true

# Tasks
after "deploy", "deploy:cleanup"

namespace :deploy do
  %w[start stop restart].each do |command|
    desc "#{command} unicorn server"
    task command, :roles=>:app do
      run "/etc/init.d/unicorn_#{application} #{command}"
    end
  end
  
  task :create_directories, roles: :app do
    run "mkdir -p #{deploy_to}/releases/"
    run "mkdir -p #{deploy_to}/shared/log/"
    run "mkdir -p #{deploy_to}/shared/pids/"
  end
  before "deploy:update_code", "deploy:create_directories"
  
  task :create_log_files do
    run "mkdir -p #{deploy_to}/shared/log/"
    %w[production.log development.log].each do |file|
      run "touch #{deploy_to}/shared/log/#{file}"
      run "chmod 0666 #{deploy_to}/shared/log/#{file}"
    end
  end
  after "deploy:create_directories", "deploy:create_log_files"
  
  task :setup_unicorn_init, roles: :app do
    run "sudo ln -nfs #{current_path}/config/unicorn_init.sh /etc/init.d/unicorn_#{application}"
  end
  after "deploy:finalize_update", "deploy:setup_unicorn_init"
  
  task :update_db do
    run "cd #{deploy_to}/current/ && bundle exec rake db:create && bundle exec rake db:migrate"
  end
  after "deploy:create_symlink", "deploy:update_db"
  
end