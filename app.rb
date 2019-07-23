require('pry')
require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')

get ('/') do
  riddle1 = Riddles.new("The more you take, the more you leave behind. What am I?", "footsteps")
  riddle2 = Riddles.new("What has a head, a tail, is brown, and has no legs?", "a penny")
  riddle3 = Riddles.new("David's father has three sons : Snap, Crackle and _____ ?", "david")
  @riddle_array = [riddle1, riddle2, riddle3]
  erb(:sphinx)
end


post ('/riddles') do
erb(:riddles)
end

get ('/riddles') do

  binding.pry
erb(:riddles)
end
