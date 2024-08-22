=begin
#Dropbox Sign API

#Dropbox Sign v3 API

The version of the OpenAPI document: 3.0.0
Contact: apisupport@hellosign.com
Generated by: https://openapi-generator.tech
Generator version: 6.6.0

=end

require 'spec_helper'

describe Dropbox::Sign::Configuration do
  let(:config) { Dropbox::Sign::Configuration.default }

  before(:each) do
    # uncomment below to setup host and base_path
    Dropbox::Sign.configure do |c|
      c.host = "api.hellosign.com"
      c.base_path = "/v3"
    end
  end

  describe '#base_url' do
    it 'should have the default value' do
      # uncomment below to test default value of the base path
      expect(config.base_url).to eq("https://api.hellosign.com/v3")
    end

    it 'should remove trailing slashes' do
      [nil, '', '/', '//'].each do |base_path|
        config.base_path = base_path
        # uncomment below to test trailing slashes
        # expect(config.base_url).to eq("https://api.hellosign.com/v3")
      end
    end
  end
end
