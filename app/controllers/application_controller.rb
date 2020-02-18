require 'sinatra/base'
require 'pry'
class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do 
        erb :super_hero
    end 


    post '/teams' do 

        # @team_name = params[:team][:name]
        # @team_motto = params[:team][:motto]
        # @hero_name = [] 
        # @hero_power = [] 
        # @hero_bio = [] 
        # @team_members = params[:team][:members]
        # @team_members.each do |hero, attrib|
        #     @hero_name << attrib[:name]
        #     @hero_power << attrib[:power]
        #     @hero_bio << attrib[:bio] 
        # end 
        # <% @team_members.each.with_index do |hero, index| %>
#     <h2>Hero Name: <%= @hero_name[index] %></h2>
#     <p>
#       Hero power: <%= @hero_power[index] %>
#       <br>
#       Hero biography: <%= @hero_bio[index] %>
#     </p>
#   <% end %>

       erb :team
    end 

end
