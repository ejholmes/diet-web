require 'bundler/setup'
Bundler.require :default

task :deploy do
  app = 'diet-web'
  sh "git push git@heroku.com:#{app}.git HEAD:master"
end
