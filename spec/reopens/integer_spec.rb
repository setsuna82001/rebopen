require "spec_helper"

describe Integer do
  #=======================================
  # Integer#half
  #=======================================
  describe '#half' do
    it 'return value check' do
      expect(100.half).to eq 50
      expect(101.half).to eq 50
    end
  end

  #=======================================
  # Integer#half
  #=======================================
  describe '#back' do
    it 'return value check' do
      expect(100.back).to eq 99
      expect(1.back).to eq 0
      expect(0.back).to eq -1
    end
  end
end
