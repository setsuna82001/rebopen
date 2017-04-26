require 'yaml'

module YAML
  class << self
    #=====================================
    # yaml::load_sym
    #=====================================
    def load_sym str
      data = load str
      data.symbolize
    end

    #=====================================
    # yaml::load_file_sym
    #=====================================
    def load_file_sym path
      data = load_file path
      data.symbolize
    end

  end
end
