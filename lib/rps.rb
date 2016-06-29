class String
  define_method(:beatsai) do
    play = ["rock", "paper", "scissors"]

    p1 = self.downcase()
    p2 = play[rand(3)]
    result = ''
    play.each_with_index do |val, idx|
      if p1 == val
        if p2 == play[idx]
          result = "tied"
        elsif p2 == play[idx - 1]
          result = "win"
        elsif p2 == play[idx - 2]
          result = "lose"
        end
      end
    end
    [result, p2]
  end

  define_method(:beats) do |player_two|
    # rock = {"paper" => "lose", "rock" => "tie", "scissors" => "win"}
    # paper = {"scissors" => "lose", "paper" => "tie", "rock" => "win"}
    # scissors = {"rock" => "lose", "scissors" => "tie", "paper" => "win"}
    #
    # player_one = self
    # if (player_one == "rock")
    #   result = rock.fetch(player_two)
    #   result
    # elsif (player_one == "paper")
    #   result = paper.fetch(player_two)
    #   result
    # elsif (player_one == "scissors")
    #   result = scissors.fetch(player_two)
    #   result
    # end
    play = ["rock", "paper", "scissors"]

    p1 = self.downcase()
    p2 = player_two.downcase()
    result = ''
    play.each_with_index do |val, idx|
      if p1 == val
        if p2 == play[idx]
          result = "tied"
        elsif p2 == play[idx - 1]
          result = "win"
        elsif p2 == play[idx - 2]
          result = "lose"
        end
      end
    end
    [result, p1, p2]
  end
end







# play_array = ['rock', 'paper', 'scissors']
# self  argument
# if self == argument
#   false
# elsif
