require 'player'

RSpec.describe Player do
  subject(:james) { Player.new('James') }
  subject(:rory)  { Player.new('Rory')  }

  it 'returns it\'s name' do
    expect(james.name).to eq 'James'
  end

  it 'has 100HP' do
    expect(james.hp).to eq 100
    end

  describe '#attack' do
    it 'damages the other player' do
      james.attack(rory)
      expect(rory.hp).to eq 90
    end
  end
end
