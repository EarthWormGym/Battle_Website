require 'player'

describe Player do
  subject(:adam) { Player.new('Adam') }

  describe '#name' do
    it 'returns the name' do
      expect(adam.name).to eq 'Adam'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(dave.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end
  
end
