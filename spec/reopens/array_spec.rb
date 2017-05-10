describe Array do
  #=======================================
  # Array#symbolize
  #=======================================
  describe '#symbolize' do
    before do
      @data = ['a', :b, {'c' => [:cc]}, {d: {'dd' => :ddd}}]
      @ans  = ['a', :b, {c:     [:cc]}, {d: {dd: :ddd}}]
      @tmp  = @data.send :symbolize
    end

    it 'return format check' do
      expect(@tmp).to eq @ans
    end
  end
end
