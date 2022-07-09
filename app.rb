require 'sinatra'
require "erb"

configure { set :server, :puma }


# set :bind, '192.168.1.9'


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
