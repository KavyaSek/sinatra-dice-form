require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:form)
end

get '/process_roll' do
  num_dice = params[:num_dice].to_i
  num_sides = params[:num_sides].to_i
  
  @dice = num_dice
  @sides = num_sides

  @results = []

  @dice.times do
    result = rand(1..@sides)
    @results.push(result)
  end

  erb (:flexible)
end
