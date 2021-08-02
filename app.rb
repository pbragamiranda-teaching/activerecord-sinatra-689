require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"
# require "prybyebug"

get "/" do
  @restaurants = Restaurant.order(created_at: :desc)
  erb :index # => render views/index.erb
end

get "/restaurants/:id" do
  id = params[:id]
  @restaurant = Restaurant.find(id)
  erb :show
end

post '/restaurants' do
  city = params[:city]
  name = params[:name]
  Restaurant.create(name: name, city: city)
  redirect "/"
  # biding.pry
end
