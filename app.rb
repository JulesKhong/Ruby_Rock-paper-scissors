require('sinatra')
require('sinatra/reloader')
require('pry')
require('./lib/rps')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/scoreai') do
  @user_play = params.fetch('player_one')
  @temp_result = @user_play.beatsai()
  @outcome = @temp_result[0]
  @ai_play = @temp_result[1]
  @p1_play = ""
  @p2_play = ""
  erb(:result)
end

get('/score') do
  @player1 = params.fetch('player_one')
  @player2 = params.fetch('player_two')
  @temp_result = @player1.beats(@player2)
  @outcome = @temp_result[0]
  @p1_play = @temp_result[1]
  @p2_play = @temp_result[2]
  @ai_play = ""
  @user_play = ""
  erb(:result)
end

get('/ai') do
  erb(:ai)
end

get('/player') do
  erb(:player)
end
