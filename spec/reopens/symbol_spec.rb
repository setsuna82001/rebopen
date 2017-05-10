describe Symbol do
  #=======================================
  # Symbol::>>
  #=======================================
  describe '::>>' do
    it 'process check' do
      data = [*1..10]
      ans  = data.map(&:next).map(&:to_s)
      tmp  = data.map(&:next >> :to_s)
      expect(tmp).to eq ans
    end
  end
end
