require 'player'

RSpec.describe Player do
  subject(:superman) { Player.new('Superman') }
  subject(:batman)  { Player.new('Batman') }

  it 'returns it\'s name' do
    expect(superman.name).to eq 'Superman'
  end

  it 'has 100HP' do
    expect(superman.hp).to eq 100
  end

  # describe '#attack' do
  #   it 'damages the other player' do
  #     superman.attack(batman)
  #     expect(batman.hp).to eq 90
  #   end
  # end
end
