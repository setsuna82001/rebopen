require "spec_helper"

describe JSON do
  #=======================================
  # JSON::preparse
  #=======================================
  describe '::preparse' do
    before do
      text  = '{"a": "aa", "b": {"bb": "bbb"}}'
      @ans  = {a: 'aa', b: {bb: 'bbb'}}
      @tmp  = JSON::preparse text
    end

    it 'return format check' do
      expect(@tmp).to eq @ans
    end
  end

  #=======================================
  # JSON::shaping
  #=======================================
  describe '::shaping' do
    before do
      @data = {a: :aa, b: {bb: :bbb}}
      @ans  = <<EOJSON.chomp
{
  "a": "aa",
  "b": {
    "bb": "bbb"
  }
}
EOJSON
      @tmp  = JSON::shaping @data
    end

    it 'return format check' do
      expect(@tmp).to eq @ans
    end
  end
end
