set :application, "markyoung.me"
set :repository,  "git@github.com:zarzax/markyoung.me.git"

role :web, "markyoung.me"
role :app, "markyoung.me"
role :db, "markyoung.me",:primary=>true

set :scm, "git"
set :user, "mark"
set :runner, "mark"

set :branch, "master"
# set :deploy_via, :remote_cache
# set :git_enable_submodules, 1

set :deploy_to, "/home/mark/apps/#{application}"

# If you are using Passenger mod_rails uncomment this:
# if you're still using the script/reapear helper you will need
# these http://github.com/rails/irs_process_scripts

namespace :deploy do
  task :start {}
  task :stop {}
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end