require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/dice/:num/:size") do
  @num_dice = params.fetch("num").to_i

  @rolls = []

  @num_dice.times do
    die = rand(1..6)
    @rolls.push(die)
  end
  erb(:flexible)
end
