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
  class ReportApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Report
    # Request the creation of one or more report(s).  When the report(s) have been generated, you will receive an email (one per requested report type) containing a link to download the report as a CSV file. The requested date range may be up to 12 months in duration, and `start_date` must not be more than 10 years in the past.
    # @param report_create_request [ReportCreateRequest] 
    # @param [Hash] opts the optional parameters
    # @return [ReportCreateResponse]
    def report_create(report_create_request, opts = {})
      data, _status_code, _headers = report_create_with_http_info(report_create_request, opts)
      data
    end

    # Create Report
    # Request the creation of one or more report(s).  When the report(s) have been generated, you will receive an email (one per requested report type) containing a link to download the report as a CSV file. The requested date range may be up to 12 months in duration, and &#x60;start_date&#x60; must not be more than 10 years in the past.
    # @param report_create_request [ReportCreateRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ReportCreateResponse, Integer, Hash)>] ReportCreateResponse data, response status code and response headers
    def report_create_with_http_info(report_create_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReportApi.report_create ...'
      end
      # verify the required parameter 'report_create_request' is set
      if @api_client.config.client_side_validation && report_create_request.nil?
        fail ArgumentError, "Missing the required parameter 'report_create_request' when calling ReportApi.report_create"
      end
      # resource path
      local_var_path = '/report/create'

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
        report_create_request,
        Dropbox::Sign::ReportCreateRequest.openapi_types
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
      return_type = opts[:debug_return_type] || 'ReportCreateResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"ReportApi.report_create",
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
            "Dropbox::Sign::ReportCreateResponse"
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
        @api_client.config.logger.debug "API called: ReportApi#report_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
