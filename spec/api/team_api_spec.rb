=begin
#HelloSign API

#HelloSign v3 API

The version of the OpenAPI document: 3.0.0
Contact: apisupport@hellosign.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.0

=end

require 'spec_helper'
require 'json_spec'
require_relative '../test_utils'

config = HelloSign.configure
api_client = HelloSign::ApiClient.new(config)

describe HelloSign::TeamApi do
  context 'TeamApiTest' do
    api = HelloSign::TeamApi.new

    it 'testTeamAddMember' do
      request_class = 'TeamAddMemberRequest'
      request_data = get_fixture_data(request_class)[:default]

      response_class = 'TeamGetResponse'
      response_data = get_fixture_data(response_class)[:default]

      set_expected_response(200, JSON.dump(response_data))
      expected = api_client.convert_to_type(response_data, response_class) || TeamAddMemberRequest
      obj = api_client.convert_to_type(request_data, request_class) || TeamGetResponse

      result = api.team_add_member(obj)

      expect(result.class.to_s).to eq("HelloSign::#{response_class}")
      expect(result.to_json).to be_json_eql(expected.to_json)
    end

    it 'testTeamCreate' do
      request_class = 'TeamCreateRequest'
      request_data = get_fixture_data(request_class)[:default]

      response_class = 'TeamGetResponse'
      response_data = get_fixture_data(response_class)[:default]

      set_expected_response(200, JSON.dump(response_data))
      expected = api_client.convert_to_type(response_data, response_class) || TeamGetResponse
      obj = api_client.convert_to_type(request_data, request_class) || TeamCreateRequest

      result = api.team_create(obj)

      expect(result.class.to_s).to eq("HelloSign::#{response_class}")
      expect(result.to_json).to be_json_eql(expected.to_json)
    end

    skip 'testTeamDelete' do
    end

    it 'testTeamGet' do
      response_class = 'TeamGetResponse'
      response_data = get_fixture_data(response_class)[:default]

      set_expected_response(200, JSON.dump(response_data))
      expected = api_client.convert_to_type(response_data, response_class) || TeamGetResponse

      result = api.team_get

      expect(result.class.to_s).to eq("HelloSign::#{response_class}")
      expect(result.to_json).to be_json_eql(expected.to_json)
    end

    it 'testTeamUpdate' do
      request_class = 'TeamUpdateRequest'
      request_data = get_fixture_data(request_class)[:default]

      response_class = 'TeamGetResponse'
      response_data = get_fixture_data(response_class)[:default]

      set_expected_response(200, JSON.dump(response_data))
      expected = api_client.convert_to_type(response_data, response_class) || TeamGetResponse
      obj = api_client.convert_to_type(request_data, request_class) || TeamUpdateRequest

      result = api.team_update(obj)

      expect(result.class.to_s).to eq("HelloSign::#{response_class}")
      expect(result.to_json).to be_json_eql(expected.to_json)
    end

    it 'testTeamRemoveMember' do
      request_class = 'TeamRemoveMemberRequest'
      request_data = get_fixture_data(request_class)[:default]

      response_class = 'TeamGetResponse'
      response_data = get_fixture_data(response_class)[:default]

      set_expected_response(200, JSON.dump(response_data))
      expected = api_client.convert_to_type(response_data, response_class) || TeamGetResponse
      obj = api_client.convert_to_type(request_data, request_class) || TeamRemoveMemberRequest

      result = api.team_remove_member(obj)

      expect(result.class.to_s).to eq("HelloSign::#{response_class}")
      expect(result.to_json).to be_json_eql(expected.to_json)
    end
  end
end
