require 'net/http'

class Net::HTTPResponse
  #=======================================
  # Net::HTTPResponse#isXXX?
  #=======================================
  CODE_TO_OBJ.each{|code, klass|
    code = code.to_i
    name = "is#{code}?".to_sym
    define_method name do
      self.code.to_i == code
    end
  }
end
