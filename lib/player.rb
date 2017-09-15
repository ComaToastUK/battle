class Player
  attr_reader :name, :hp, :damage_taken

  def initialize(name)
    @name = name
    @hp = 100
  end

  def take_damage
    hp = @hp
    @hp -= 10
    @damage_taken = hp - @hp
  end

  def heal
    @hp += rand(25)
  end

  def lose
    @hp <= 0
  end
end
