root="/var/www/rphenomenal/current"

working_directory root
worker_processes 2

preload_app true

timeout 30

pid "#{root}/tmp/pids/unicorn.pid"
listen "#{root}/tmp/rphenomenal.sock"