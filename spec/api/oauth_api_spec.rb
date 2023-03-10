=begin
#Dropbox Sign API

#Dropbox Sign v3 API

The version of the OpenAPI document: 3.0.0
Contact: apisupport@hellosign.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.0

=end

require 'spec_helper'
require 'json_spec'
require_relative '../test_utils'

describe Dropbox::Sign::OAuthApi do
  context 'OAuthApiTest' do
    api = Dropbox::Sign::OAuthApi.new

    it 'testTokenGenerate' do
      request_class = 'OAuthTokenGenerateRequest'
      request_data = get_fixture_data(request_class)[:default]

      response_class = 'OAuthTokenResponse'
      response_data = get_fixture_data(response_class)[:default]

      set_expected_response(200, JSON.dump(response_data))
      expected = Dropbox::Sign::OAuthTokenResponse.init(response_data)
      obj = Dropbox::Sign::OAuthTokenGenerateRequest.init(request_data)

      result = api.oauth_token_generate(obj)

      expect(result.class.to_s).to eq("Dropbox::Sign::#{response_class}")
      expect(result.to_json).to be_json_eql(JSON.dump(expected))
    end

    it 'testTokenRefresh' do
      request_class = 'OAuthTokenRefreshRequest'
      request_data = get_fixture_data(request_class)[:default]

      response_class = 'OAuthTokenResponse'
      response_data = get_fixture_data(response_class)[:default]

      set_expected_response(200, JSON.dump(response_data))
      expected = Dropbox::Sign::OAuthTokenResponse.init(response_data)
      obj = Dropbox::Sign::OAuthTokenRefreshRequest.init(request_data)

      result = api.oauth_token_refresh(obj)

      expect(result.class.to_s).to eq("Dropbox::Sign::#{response_class}")
      expect(result.to_json).to be_json_eql(JSON.dump(expected))
    end
  end
end
