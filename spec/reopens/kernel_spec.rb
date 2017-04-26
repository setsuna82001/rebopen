require "spec_helper"

describe Kernel do
  #=======================================
  # Kernel#compact
  #=======================================
  describe '#compact' do
    it 'return data check' do
      a = :aa
      b = :bb
      c = :cc
      data = compact %i(a b c)
      tmp  = {a: a, b: b, c: c}
      expect(data).to eq tmp
    end
  end
end
