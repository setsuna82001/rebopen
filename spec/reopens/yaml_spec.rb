require "spec_helper"

describe YAML do
  #=======================================
  # YAML::load_sym
  #=======================================
  describe '::load_sym' do
    before do
      @ans  = {a: :aa, b: {bb: :bbb}}
      text  = <<EOYAML
---
a:
  :aa
b:
  bb: :bbb
EOYAML
      @tmp  = YAML::load_sym text
    end

    it 'return format check' do
      expect(@tmp).to eq @ans
    end
  end

  #=======================================
  # YAML::load_file_sym
  #=======================================
  describe '::load_file_sym' do
    before do
      @ans  = {a: :aa, b: {bb: :bbb}}
      text  = <<EOYAML
---
a:
  :aa
b:
  bb: :bbb
EOYAML
      require 'tempfile'
      @file = Tempfile.open 'load_file_sym'
      @file.puts text
      @file.close
      @tmp  = YAML::load_file_sym @file.path
      @file.delete
    end

    it 'return format check' do
      expect(@tmp).to eq @ans
    end
  end
end
