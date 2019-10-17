require 'player'

describe Player do
  subject(:adam) { Player.new('Adam') }
  subject(:sim) { Player.new('Sim') }

  describe '#name' do
    it 'returns the name' do
      expect(adam.name).to eq 'Adam'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(adam.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(sim).to receive(:receive_damage)
      adam.attack(sim)
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { adam.receive_damage }.to change { adam.hit_points }.by(-10)
    end
  end

end
