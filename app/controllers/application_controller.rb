require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }


    get '/' do
    erb :super_hero
    end

    post '/team' do
    # neww = Superhero.new
    # = neww.build(params
    @tn = params["tn"]
    @tm = params["tm"]

    @tn1 =  params["team"]["members"][0]["name"]

    erb :team
    end

end
