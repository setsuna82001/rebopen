describe NilClass do
  #=======================================
  # NilClass#to_sym
  #=======================================
  describe '#to_sym' do
    it 'return value check' do
      expect(nil.to_sym).to eq nil
    end
  end
end
