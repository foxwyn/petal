task :install do
  sh 'bundle config set --local path vendor/bundle'
  sh 'bundle install'
  sh 'bundle binstubs --all'
end

task :default do
  sh 'bundle exec ruby src/bot.rb'
end