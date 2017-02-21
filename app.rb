require './environment'

module FormsLab
  class App < Sinatra::Base
    get '/' do
      erb :root
    end
    get '/new' do
      erb :"/pirates/new"
    end
    post '/pirates' do
      @new_pirate = Pirate.new(params[:pirate])
      @ships = []
      params[:pirate][:ships].each do |ship|
        @ships << Ship.new(ship)
      end
      erb :'pirates/show'
    end

    # code other routes/actions here

  end
end
