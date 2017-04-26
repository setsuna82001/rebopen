require "spec_helper"

describe Hash do
  #=======================================
  # Hash#regist
  #=======================================
  describe '#regist' do
    before do
      @data = {a: :aa, b: :bb}
      @tmp  = @data.send :regist, :c, :cc
    end

    it 'object id check' do
      expect(@data.object_id).not_to eq @tmp.object_id
    end

    it 'data key/val check' do
      expect(@data.keys).to eq %i(a b)
      expect(@data.values).to eq %i(aa bb)
    end

    it 'tmp key/val check' do
      expect(@tmp.keys).to eq %i(a b c)
      expect(@tmp.values).to eq %i(aa bb cc)
    end
  end

  #=======================================
  # Hash#regist!
  #=======================================
  describe '#regist!' do
    before do
      @data = {a: :aa, b: :bb}
      @tmp  = @data.send :regist!, :c, :cc
    end

    it 'object id check' do
      expect(@data.object_id).to eq @tmp.object_id
    end

    it 'data key/val check' do
      expect(@data.keys).to eq %i(a b c)
      expect(@data.values).to eq %i(aa bb cc)
    end

    it 'tmp key/val check' do
      expect(@tmp.keys).to eq %i(a b c)
      expect(@tmp.values).to eq %i(aa bb cc)
    end
  end

  #=======================================
  # Hash#symbolize
  #=======================================
  describe '#symbolize' do
    before do
      @data = {a: :aa, 'b' => 'bb', 'c' => [:cc], d: {'dd' => :ddd}}
      @ans  = {a: :aa, b: 'bb',     c:     [:cc], d: {dd: :ddd}}
      @tmp  = @data.send :symbolize
    end

    it 'return format check' do
      expect(@tmp).to eq @ans
    end
  end
end
