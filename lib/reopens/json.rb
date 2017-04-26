require 'json'

module JSON
  STR_INDENT  = ' ' * 2

  class << self
    #=====================================
    # JSON::preparse
    #=====================================
    def preparse str
      parse str, symbolize_names: true
    end

    #=====================================
    # JSON::shaping
    #=======================================
    def shaping data
      if Hash === data
        data = pretty_generate data, indent: STR_INDENT
      end
      return data
    end

  end
end
