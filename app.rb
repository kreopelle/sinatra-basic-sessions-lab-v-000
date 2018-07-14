require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    enable :Sessions
    set :session_secret, "pickles"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    binding.pry 
    @item = params[:item]

    erb :checkout
  end

end
