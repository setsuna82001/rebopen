require "spec_helper"

describe Net::HTTPResponse do
  #=======================================
  # Net::HTTPResponse::isXXX?
  #=======================================
  describe '#is200?' do
    it 'return status check' do
      http  = Net::HTTP.new 'www.dmm.com'
      req   = Net::HTTP::Get.new '/'
      res   = http.request req
      expect(res.is200?).to eq true
    end

    it 'method check' do
      expect(Net::HTTPResponse.instance_methods).to include :is200?
      expect(Net::HTTPOK.instance_methods).to include :is200?
    end
  end
end
