=begin
#Dropbox Sign API

#Dropbox Sign v3 API

The version of the OpenAPI document: 3.0.0
Contact: apisupport@hellosign.com
Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require 'cgi'

module Dropbox
end

module Dropbox::Sign
  class EmbeddedApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get Embedded Template Edit URL
    # Retrieves an embedded object containing a template url that can be opened in an iFrame. Note that only templates created via the embedded template process are available to be edited with this endpoint.
    # @param template_id [String] The id of the template to edit.
    # @param embedded_edit_url_request [EmbeddedEditUrlRequest] 
    # @param [Hash] opts the optional parameters
    # @return [EmbeddedEditUrlResponse]
    def embedded_edit_url(template_id, embedded_edit_url_request, opts = {})
      data, _status_code, _headers = embedded_edit_url_with_http_info(template_id, embedded_edit_url_request, opts)
      data
    end

    # Get Embedded Template Edit URL
    # Retrieves an embedded object containing a template url that can be opened in an iFrame. Note that only templates created via the embedded template process are available to be edited with this endpoint.
    # @param template_id [String] The id of the template to edit.
    # @param embedded_edit_url_request [EmbeddedEditUrlRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(EmbeddedEditUrlResponse, Integer, Hash)>] EmbeddedEditUrlResponse data, response status code and response headers
    def embedded_edit_url_with_http_info(template_id, embedded_edit_url_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EmbeddedApi.embedded_edit_url ...'
      end
      # verify the required parameter 'template_id' is set
      if @api_client.config.client_side_validation && template_id.nil?
        fail ArgumentError, "Missing the required parameter 'template_id' when calling EmbeddedApi.embedded_edit_url"
      end
      # verify the required parameter 'embedded_edit_url_request' is set
      if @api_client.config.client_side_validation && embedded_edit_url_request.nil?
        fail ArgumentError, "Missing the required parameter 'embedded_edit_url_request' when calling EmbeddedApi.embedded_edit_url"
      end
      # resource path
      local_var_path = '/embedded/edit_url/{template_id}'.sub('{' + 'template_id' + '}', CGI.escape(template_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      post_body = {}
      form_params = opts[:form_params] || {}
      result = @api_client.generate_form_data(
        embedded_edit_url_request,
        Dropbox::Sign::EmbeddedEditUrlRequest.openapi_types
      )

      # form parameters
      if result[:has_file]
        form_params = opts[:form_params] || result[:params]
        header_params['Content-Type'] = 'multipart/form-data'
      else
        # http body (model)
        post_body = opts[:debug_body] || result[:params]
      end

      # return_type
      return_type = opts[:debug_return_type] || 'EmbeddedEditUrlResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key', 'oauth2']

      new_options = opts.merge(
        :operation => :"EmbeddedApi.embedded_edit_url",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      begin
        data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      rescue Dropbox::Sign::ApiError => e
        if e.code === 200
          body = @api_client.convert_to_type(
            JSON.parse("[#{e.response_body}]", :symbolize_names => true)[0],
            "Dropbox::Sign::EmbeddedEditUrlResponse"
          )

          fail ApiError.new(:code => e.code,
                            :response_headers => e.response_headers,
                            :response_body => body),
               e.message
        end

        range_code = "4XX".split('').first
        range_code_left = "#{range_code}00".to_i
        range_code_right = "#{range_code}99".to_i
        if e.code >= range_code_left && e.code <= range_code_right
          body = @api_client.convert_to_type(
            JSON.parse("[#{e.response_body}]", :symbolize_names => true)[0],
            "Dropbox::Sign::ErrorResponse"
          )

          fail ApiError.new(:code => e.code,
                            :response_headers => e.response_headers,
                            :response_body => body),
               e.message
        end

      end

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmbeddedApi#embedded_edit_url\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Embedded Sign URL
    # Retrieves an embedded object containing a signature url that can be opened in an iFrame. Note that templates created via the embedded template process will only be accessible through the API.
    # @param signature_id [String] The id of the signature to get a signature url for.
    # @param [Hash] opts the optional parameters
    # @return [EmbeddedSignUrlResponse]
    def embedded_sign_url(signature_id, opts = {})
      data, _status_code, _headers = embedded_sign_url_with_http_info(signature_id, opts)
      data
    end

    # Get Embedded Sign URL
    # Retrieves an embedded object containing a signature url that can be opened in an iFrame. Note that templates created via the embedded template process will only be accessible through the API.
    # @param signature_id [String] The id of the signature to get a signature url for.
    # @param [Hash] opts the optional parameters
    # @return [Array<(EmbeddedSignUrlResponse, Integer, Hash)>] EmbeddedSignUrlResponse data, response status code and response headers
    def embedded_sign_url_with_http_info(signature_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EmbeddedApi.embedded_sign_url ...'
      end
      # verify the required parameter 'signature_id' is set
      if @api_client.config.client_side_validation && signature_id.nil?
        fail ArgumentError, "Missing the required parameter 'signature_id' when calling EmbeddedApi.embedded_sign_url"
      end
      # resource path
      local_var_path = '/embedded/sign_url/{signature_id}'.sub('{' + 'signature_id' + '}', CGI.escape(signature_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      post_body = {}
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'EmbeddedSignUrlResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key', 'oauth2']

      new_options = opts.merge(
        :operation => :"EmbeddedApi.embedded_sign_url",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      begin
        data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      rescue Dropbox::Sign::ApiError => e
        if e.code === 200
          body = @api_client.convert_to_type(
            JSON.parse("[#{e.response_body}]", :symbolize_names => true)[0],
            "Dropbox::Sign::EmbeddedSignUrlResponse"
          )

          fail ApiError.new(:code => e.code,
                            :response_headers => e.response_headers,
                            :response_body => body),
               e.message
        end

        range_code = "4XX".split('').first
        range_code_left = "#{range_code}00".to_i
        range_code_right = "#{range_code}99".to_i
        if e.code >= range_code_left && e.code <= range_code_right
          body = @api_client.convert_to_type(
            JSON.parse("[#{e.response_body}]", :symbolize_names => true)[0],
            "Dropbox::Sign::ErrorResponse"
          )

          fail ApiError.new(:code => e.code,
                            :response_headers => e.response_headers,
                            :response_body => body),
               e.message
        end

      end

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmbeddedApi#embedded_sign_url\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
