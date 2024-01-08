require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/dice/:num/:sides") do
  @num_dice = params.fetch("num").to_i
  @side_dice = params.fetch("sides").to_i

  @rolls = []

  @num_dice.times do
    die = rand(1..@side_dice)
    @rolls.push(die)
  end
  
  erb(:flexible)
end
