require 'uri'

class String
  #=======================================
  # String#url?
  #=======================================
  def url?
    case URI::parse(self)
    when URI::HTTP  then true
    when URI::HTTPS then true
    else false
    end
  end
end
