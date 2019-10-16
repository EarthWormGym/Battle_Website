require 'player'

describe Player do
  subject(:adam) { Player.new('Adam') }
  
  describe '#name' do
    it 'returns the name' do
      expect(adam.name).to eq 'Adam'
    end
  end
end
