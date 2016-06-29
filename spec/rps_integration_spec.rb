require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the game results',{:type => :feature}) do
  it "takes the input from players and returns a winner" do
    visit('/')
    select('Rock', :from => 'player_one')
    # select('Paper', :from => 'player_two')
    click_button('Play')
    expect(page).to have_content('lose')
  end
end
