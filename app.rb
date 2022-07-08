require 'sinatra'
require "erb"
configure { set :server, :puma }

# get '/' do
#   'fuck you josh'
# end

get '/' do
  erb :index
end

# get '/:background' do
#   erb :base, { :locals => params, :layout => false }
# end

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

# get '/footer' do
#   erb :footer, :layout => :sinatra
# end

get '/background' do
  erb :background
end
