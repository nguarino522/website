require 'sinatra'
require "erb"
configure { set :server, :puma }

set :root, File.dirname(__FILE__)
set :public_folder, 'public'

# get '/' do
#   'fuck you josh'
# end

get '/' do
  erb :base
end

get '/time' do
  code = "<%= Time.now %>"
  erb code
end

get '/test' do
 erb :test
end

get '/sinatra' do
  erb :sinatra
 end

get '/footer' do
  erb :footer, :layout => :sinatra
end