require 'sinatra'
configure { set :server, :puma }

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

