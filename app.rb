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
    @session[:item] = params[:item]
    erb :'cart'
  end

    # get '/checkout' do
    #   session['item'] =
    # end

    # get '/hey' do
    #   session["name"] = "Victoria"
    #   @session = session
    # end
end
