describe String do
  #=======================================
  # String#url?
  #=======================================
  describe '#url?' do
    it 'return value shuld be true' do
      %w(
        http://www.dmm.com
        http://www.dmm.com/
        http://www.dmm.com/a/b/
        http://www.dmm.com/a/b/?c=d
        https://www.dmm.com/
      ).each{|str|
        expect(str.url?).to be true
      }
    end

    it 'return value shuld be false' do
      %w(
        htt://www.dmm.com
        ftp://www.dmm.com/
        aaa://www.dmm.com/a/b/
        foo
        foo/bar
      ).each{|str|
        expect(str.url?).to be false
      }
    end
  end
  
end
