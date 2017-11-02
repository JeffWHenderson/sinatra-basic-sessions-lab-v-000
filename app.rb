require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, "secret"
  end

  get '/' do
    erb :'index'
  end

  post '/checkout' do
    @cart = params
    erb :'cart'
  end

    get '/checkout' do
      @session = session
    end

    # get '/hey' do
    #   session["name"] = "Victoria"
    #   @session = session
    # end
end
