working_directory "/home/rphenomenal-production/current"
worker_processes 4
preload_app true
timeout 180
listen "127.0.0.1:4001"
stderr_path "/home/rphenomenal-production/current/log/production.log"
stdout_path "/home/rphenomenal-production/current/log/production.log"
pid "/home/rphenomenal-production/current/tmp/pids/unicorn.pid"