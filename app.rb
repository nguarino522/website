require 'sinatra'

# require "erb"
# configure { set :server, :puma }
# set :bind, '192.168.1.9'

class Application < Sinatra::Base
  
  def https_required!
    if settings.production? && request.scheme == 'http'
        headers['Location'] = request.url.sub('http', 'https')
        halt 301, "https required\n"
    end
  end

  before "/*" do
    https_required!
  end

  get '/' do
    erb :index
  end

  get '/about' do
    erb :about
  end

  get '/skills' do
    erb :skills
  end

  get '/projects' do
    erb :projects
  end

  get '/contact' do
    erb :contact
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

  get '/api/test' do
    content_type :json
    { test: "this is a test" }.to_json
  end

  before "/api/test" do
    https_required!
  end

end

