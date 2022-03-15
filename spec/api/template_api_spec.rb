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

config = do_config
api_client = HelloSign::ApiClient.new(config)

describe HelloSign::TemplateApi do
  context 'TemplateApiTest' do
    api = HelloSign::TemplateApi.new

    it 'testTemplateAddUser' do
      template_id = 'f57db65d3f933b5316d398057a36176831451a35'

      request_class = 'TemplateAddUserRequest'
      request_data = get_fixture_data(request_class)[:default]

      response_class = 'TemplateGetResponse'
      response_data = get_fixture_data(response_class)[:default]

      set_expected_response(200, JSON.dump(response_data))
      expected = api_client.convert_to_type(response_data, response_class)
      obj = api_client.convert_to_type(request_data, request_class)

      result = api.template_add_user(template_id, obj)

      expect(result.class.to_s).to eq("HelloSign::#{response_class}")
      expect(result.to_json).to be_json_eql(expected.to_json)
    end

    it 'testTemplateCreateEmbeddedDraft' do
      request_class = 'TemplateCreateEmbeddedDraftRequest'
      request_data = get_fixture_data(request_class)[:default]

      response_class = 'TemplateCreateEmbeddedDraftResponse'
      response_data = get_fixture_data(response_class)[:default]

      set_expected_response(200, JSON.dump(response_data))
      expected = api_client.convert_to_type(response_data, response_class)
      obj = api_client.convert_to_type(request_data, request_class)

      result = api.template_create_embedded_draft(obj)

      expect(result.class.to_s).to eq("HelloSign::#{response_class}")
      expect(result.to_json).to be_json_eql(expected.to_json)
    end

    skip 'testTemplateDelete' do
    end

    it 'testTemplateFiles' do
      template_id = 'f57db65d3f933b5316d398057a36176831451a35'
      file_type = 'pdf'
      get_url = false
      get_data_uri = false

      response_class = 'FileResponse'
      response_data = get_fixture_data(response_class)[:default]

      set_expected_response(200, JSON.dump(response_data))
      expected = api_client.convert_to_type(response_data, response_class)

      result = api.template_files(template_id, {
        :file_type => file_type,
        :get_url => get_url,
        :get_data_uri => get_data_uri,
      })

      expect(result.class.to_s).to eq("HelloSign::#{response_class}")
      expect(result.to_json).to be_json_eql(expected.to_json)
    end

    it 'testTemplateGet' do
      template_id = 'f57db65d3f933b5316d398057a36176831451a35'

      response_class = 'TemplateGetResponse'
      response_data = get_fixture_data(response_class)[:default]

      set_expected_response(200, JSON.dump(response_data))
      expected = api_client.convert_to_type(response_data, response_class)

      result = api.template_get(template_id)

      expect(result.class.to_s).to eq("HelloSign::#{response_class}")
      expect(result.to_json).to be_json_eql(expected.to_json)
    end

    it 'testTemplateList' do
      account_id = 'all'

      response_class = 'TemplateListResponse'
      response_data = get_fixture_data(response_class)[:default]

      set_expected_response(200, JSON.dump(response_data))
      expected = api_client.convert_to_type(response_data, response_class)

      result = api.template_list({:account_id => account_id})

      expect(result.class.to_s).to eq("HelloSign::#{response_class}")
      expect(result.to_json).to be_json_eql(expected.to_json)
    end

    it 'testTemplateRemoveUser' do
      template_id = '21f920ec2b7f4b6bb64d3ed79f26303843046536'

      request_class = 'TemplateRemoveUserRequest'
      request_data = get_fixture_data(request_class)[:default]

      response_class = 'TemplateGetResponse'
      response_data = get_fixture_data(response_class)[:default]

      set_expected_response(200, JSON.dump(response_data))
      expected = api_client.convert_to_type(response_data, response_class)
      obj = api_client.convert_to_type(request_data, request_class)

      result = api.template_remove_user(template_id, obj)

      expect(result.class.to_s).to eq("HelloSign::#{response_class}")
      expect(result.to_json).to be_json_eql(expected.to_json)
    end

    it 'testTemplateUpdateFiles' do
      template_id = '21f920ec2b7f4b6bb64d3ed79f26303843046536'

      request_class = 'TemplateUpdateFilesRequest'
      request_data = get_fixture_data(request_class)[:default]

      response_class = 'TemplateUpdateFilesResponse'
      response_data = get_fixture_data(response_class)[:default]

      set_expected_response(200, JSON.dump(response_data))
      expected = api_client.convert_to_type(response_data, response_class)
      obj = api_client.convert_to_type(request_data, request_class)

      result = api.template_update_files(template_id, obj)

      expect(result.class.to_s).to eq("HelloSign::#{response_class}")
      expect(result.to_json).to be_json_eql(expected.to_json)
    end
  end
end
