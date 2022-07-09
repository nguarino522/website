require 'bundler'
Bundler.require

set :database_file, “./database.yml”

require_all 'app'