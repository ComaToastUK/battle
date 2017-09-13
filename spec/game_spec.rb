require 'game'

RSpec.describe Game do
subject(:game)  { described_class.new(player1, player2) }
let(:player1)   { double :player1 }
let(:player2)   { double :player2 }

  describe '#attack' do
    it 'makes an attack' do
      expect(player1).to receive( :take_damage )
      game.attack(player1)
    end
  end

  it 'stores the information for 2 players' do
      expect(game.player1).to eq player1
      expect(game.player2).to eq player2
    end
end
