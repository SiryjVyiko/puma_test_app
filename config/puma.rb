pidfile   = "puma.pid"
bind "unix:///var/www/webroot/ROOT/tmp/sockets/puma.socket"
log_file   = "/var/log/nginx/puma.log"
err_log    = "/var/log/nginx/puma_error.log"
state_path = "puma.state"

workers 2
threads_count = 2
threads threads_count, threads_count

preload_app!

rackup      DefaultRackup
environment 'development'

