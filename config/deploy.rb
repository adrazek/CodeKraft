# config valid only for current version of Capistrano
lock "3.7.1"

set :application, "CodeKraft"
set :repo_url, "git@github.com:adrazek/CodeKraft.git"

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name

set :rbenv_type, :user

set :ssh_options, { 
  forward_agent: true, 
  paranoid: true, 
  keys: "~/.ssh/id_rsa" 
}

set :server_name, "www.codekraft.fr"
server '217.74.105.45:10022', user: 'yorinoadmin', roles: %w{web app db}
set :unicorn_worker_count, 5

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
set :pty, true

# Default value for :linked_files is []
# append :linked_files, "config/database.yml", "config/secrets.yml"

# Default value for linked_dirs is []
set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system', 'public/sitemaps')

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
set :keep_releases, 5