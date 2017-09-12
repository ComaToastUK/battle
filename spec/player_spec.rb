require 'player'

RSpec.describe Player do
  subject(:james) { Player.new('James') }

  it 'returns it\'s name' do
    expect(james.name).to eq 'James'
  end
end
