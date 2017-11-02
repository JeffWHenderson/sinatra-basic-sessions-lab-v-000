require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, "secret"
  end

  get '/' do
    erb :'index'
  end

  post '/checkout'
    "IN CHECKOUT"
    # params[:item]
  end

  # get '/hey' do
  #   @session = session
  # end

  # get '/hey' do
  #   session["name"] = "Victoria"
  #   @session = session
  # end
end
