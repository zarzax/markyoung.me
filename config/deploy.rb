
set :repository,  "git@github.com:zarzax/markyoung.me.git"

task :production do
  
  set :application, "markyoung.me"
  role :web, "vs2.zarzax.com"
  role :app, "vs2.zarzax.com"
  role :db,  "vs2.zarzax.com",:primary=>true
  
  set :dbapplication, "markyoungme_production"
  
end

task :staging do
  
  set :application, "staging.markyoung.me"
  role :web, "vs2.zarzax.com"
  role :app, "vs2.zarzax.com"
  role :db,  "vs2.zarzax.com",:primary=>true
  
  set :dbapplication, "markyoungme_staging"
  
end


set :scm, "git"
set :user, "deploy"
set :runner, "deploy"

set :branch, "master"
set :deploy_via, :remote_cache
# set :git_enable_submodules, 1

set :deploy_to, "/var/www/apps/#{application}"

# If you are using Passenger mod_rails uncomment this:
# if you're still using the script/reapear helper you will need
# these http://github.com/rails/irs_process_scripts

namespace :passenger do
  desc "Restart Application"
  task :restart do
    run "touch #{current_path}/tmp/restart.txt"
  end
end

after :deploy, "passenger:restart"

# No script spin method
deploy.task :start do
  # nothing
end


# Custom Database.yml
require 'erb'

set :dbuser, "deploy"
set :dbpassword, "xnHsALr95frFTh"


before "deploy:setup", :db
after "deploy:update_code", "db:symlink" 

namespace :db do
  desc "Create database yaml in shared path" 
  task :default do
    db_config = ERB.new <<-EOF
    base: &base
      adapter: mysql
      socket: /var/run/mysqld/mysqld.sock
      username: #{dbuser}
      password: #{dbpassword}

    development:
      database: #{dbapplication}_devel
      <<: *base

    test:
      database: #{dbapplication}_test
      <<: *base

    production:
      database: #{dbapplication}_prod
      <<: *base
    EOF

    run "mkdir -p #{shared_path}/config" 
    put db_config.result, "#{shared_path}/config/database.yml" 
  end

  desc "Make symlink for database yaml" 
  task :symlink do
    run "ln -nfs #{shared_path}/config/database.yml #{release_path}/config/database.yml" 
  end
end