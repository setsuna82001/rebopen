require 'rebopen/version'

module Rebopen
  # load reopens
  loadpath = File.expand_path('../reopens', __FILE__)
  Dir::glob(loadpath + '/*.rb').map{|path| require path }
end
