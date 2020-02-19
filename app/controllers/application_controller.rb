require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }


get '/' do
    erb :super_hero
end

post '/teams' do
    @team_name = params[:team][:name]
    @team_motto = params[:team][:motto]
    @name = []
    @power = []
    @bio = []
    @team = params[:team][:members]
    @team.each do |t|
        @name << t[:name]
        @power << t[:power]
        @bio << t[:bio]

    end

    erb :team
end

end
