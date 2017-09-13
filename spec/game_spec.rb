require 'game'

RSpec.describe Game do
subject(:game)  { described_class.new }
let(:player1)  { double :player1 }

  describe '#attack' do
    it 'makes an attack' do
      expect(player1).to receive( :take_damage )
      game.attack(player1)
    end
  end
end
