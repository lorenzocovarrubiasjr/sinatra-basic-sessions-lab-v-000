require_relative 'config/environment'

class App < Sinatra::Base
  
  configure do
    enable :sessions
    set :session_secret, "secret"
  end
  
  get '/' do 
    @session = session 
     binding.pry
    erb :index   
  end 
  
  post '/' do 
    @item = params['item']
    @session["item"] = @item
   erb :checkout
  end 
  
end