# README

### Prerequisites for a Rails + Hotwire tutorial
$> ruby -v
ruby 3.0.0p0 // you need at least version 3 here

$> bundle -v
Bundler version 2.2.11

$> npm -v
8.3.0 // you need at least version 7.1 here

$> yarn -v
1.22.10

### Create Fresh new Rails project, from scratch

mkdir railshotwire && cd railshotwire 
echo "source 'https://rubygems.org'" > Gemfile  
echo "gem 'rails', '~> 7.0.0'" >> Gemfile  
bundle install  
bundle exec rails new . --force -d=postgresql 