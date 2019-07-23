require('pry')
require('sinatra')
require('sinatra/reloader')
require('./lib/sphinx')
also_reload('lib/**/*.rb')

get ('/') do
  @riddle1 = Riddles.new("The more you take, the more you leave behind. What am I?", "footsteps")
  @riddle2 = Riddles.new("What has a head, a tail, is brown, and has no legs?", "a penny")
  @riddle3 = Riddles.new("David's father has three sons : Snap, Crackle and _____ ?", "david")
  erb(:sphinx)
end

post ('/riddles') do
  @riddle1 = Riddles.new("The more you take, the more you leave behind. What am I?", "footsteps")
  @riddle2 = Riddles.new("What has a head, a tail, is brown, and has no legs?", "a penny")

  @answer1 = params[:answer1]
  check = @riddle1.ask(@answer1)
  if check == true
    erb(:riddles2)
  else
    erb(:riddles_wrong)
  end
end

get ('/riddles2') do

  @riddle3 = Riddles.new("David's father has three sons : Snap, Crackle and _____ ?", "david")
  erb(:riddles2)
end

post ('/riddles2') do
  @riddle2 = Riddles.new("What has a head, a tail, is brown, and has no legs?", "a penny")
  @riddle3 = Riddles.new("David's father has three sons : Snap, Crackle and _____ ?", "david")
  @answer2 = params[:answer2]
  check = @riddle2.ask(@answer2)
  if check == true
    erb(:riddles3)
  else
    erb(:riddles_wrong)
  end
end

post ('/riddles3') do
  @riddle3 = Riddles.new("David's father has three sons : Snap, Crackle and _____ ?", "david")
  @answer3 = params[:answer3]
  check = @riddle3.ask(@answer3)
  if check == true
    erb(:win)
  else
    erb(:riddles_wrong)
  end
end
