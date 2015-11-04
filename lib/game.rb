class Game

  attr_reader :last_player_move, :last_computer_move, :winner

  def initialize args={}
    @last_player_move = args[:last_player_move]
    @last_computer_move = args[:last_computer_move] || self.play_move
  end

  def play
  	winner = choose_winner({ computer: last_computer_move, player: last_player_move })
  	self
  end

  def play_move
  	["rock", "paper", "scissors"].sample
  end

  def choose_winner args
  	computer_move = args[:computer]
  	player_move = args[:player]
  	return nil if draw? computer_move, player_move
  	return winner?(computer_move, player_move) ? :computer : :player
  end

  def winner? computer_move, player_move
  	case computer_move
  	when "rock"
  	  return false unless player_move == "scissors"
  	when "paper"
  	  return false unless player_move == "rock"
  	when "scissors"
  	  return false unless player_move == "paper"
  	end
  	return true
  end

  def draw? move_1, move_2
  	return true if move_1 == move_2
  	false
  end
end