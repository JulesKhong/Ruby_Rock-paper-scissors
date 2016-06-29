require('sinatra')
require('sinatra/reloader')
require('pry')
require('./lib/rps')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/score') do
  @user_play = params.fetch('player_one')
  @temp_result = @user_play.beats()
  @outcome = @temp_result[0]
  @ai_play = @temp_result[1]
  erb(:result)
end
