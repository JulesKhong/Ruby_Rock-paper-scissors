class String
  define_method(:beats?) do |player_two|

    rock = {"paper" => "lose", "rock" => "tie", "scissors" => "win"}
    paper = {"scissors" => "lose", "paper" => "tie", "rock" => "win"}
    scissors = {"rock" => "lose", "scissors" => "tie", "paper" => "win"}

    player_one = self
    if (player_one == "rock")
      result = rock.fetch(player_two)
      result
    elsif (player_one == "paper")
      result = paper.fetch(player_two)
      result
    elsif (player_one == "scissors")
      result = scissors.fetch(player_two)
      result
    end
  end
end







# play_array = ['rock', 'paper', 'scissors']
# self  argument
# if self == argument
#   false
# elsif
