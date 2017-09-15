class Game
  attr_reader :current_turn

  def initialize(player1, player2)
    @players = [player1, player2]
    @current_turn = player1
  end

  def player1
    @players.first
  end

  def player2
    @players.last
  end

  def attack(player)
    player.take_damage
  end

  def switch_turns
    @current_turn = opponent_of(current_turn)
  end

  def game_over?
    @players.select {|player| player.hp <= 0}
  end

  def opponent_of(the_player)
    @players.reject { |player| player == the_player }.first
  end
end
