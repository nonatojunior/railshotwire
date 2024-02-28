# README

## Prerequisites for a Rails + Hotwire tutorial
$> ruby -v
ruby 3.0.0p0 // you need at least version 3 here

$> bundle -v
Bundler version 2.2.11

$> npm -v
8.3.0 // you need at least version 7.1 here

$> yarn -v
1.22.10

## Create Fresh new Rails project, from scratch

mkdir railshotwire && cd railshotwire 
echo "source 'https://rubygems.org'" > Gemfile  
echo "gem 'rails', '~> 7.0.0'" >> Gemfile  
bundle install  
bundle exec rails new . --force -d=postgresql 

## Create simple files (no Hotwire so far:)
### Create a default controller
echo "class HomeController < ApplicationController" > app/controllers/home_controller.rb
echo "end" >> app/controllers/home_controller.rb

### Create another controller
echo "class OtherController < ApplicationController" > app/controllers/other_controller.rb
echo "end" >> app/controllers/other_controller.rb

### Create routes
echo "Rails.application.routes.draw do" > config/routes.rb
echo '  get "home/index"' >> config/routes.rb
echo '  get "other/index"' >> config/routes.rb
echo '  root to: "home#index"' >> config/routes.rb
echo 'end' >> config/routes.rb

### Create a default view
mkdir app/views/home
echo '<h1>This is home</h1>' > app/views/home/index.html.erb
echo '<div><%= link_to "go to other page", other_index_path %></div>' >> app/views/home/index.html.erb

### Create another view
mkdir app/views/other
echo '<h1>This is another page</h1>' > app/views/other/index.html.erb
echo '<div><%= link_to "go to home page", root_path %></div>' >> app/views/other/index.html.erb

### Create database and schema.rb
bin/rails db:create
bin/rails db:migrate