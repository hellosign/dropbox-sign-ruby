=begin
#Dropbox Sign API

#Dropbox Sign v3 API

The version of the OpenAPI document: 3.0.0
Contact: apisupport@hellosign.com
Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require 'openssl'

module Dropbox
end

module Dropbox::Sign
  class EventCallbackHelper
    EVENT_TYPE_ACCOUNT_CALLBACK = "account_callback"

    EVENT_TYPE_APP_CALLBACK = "app_callback"

    # Verify that a callback came from HelloSign.com
    #
    # @param [String] api_key
    # @param [EventCallbackRequest] event_callback
    # @return bool
    def self.is_valid(api_key, event_callback)
      hash = OpenSSL::HMAC.hexdigest(
        "SHA256",
        api_key,
        "#{event_callback.event.event_time}#{event_callback.event.event_type}",
      )

      return event_callback.event.event_hash === hash
    end

    # Identifies the callback type, one of "account_callback" or "app_callback".
    # "app_callback" will always include a value for "reported_for_app_id"
    #
    # @param [EventCallbackRequest] event_callback
    # @return string
    def self.get_callback_type(event_callback)
      metadata = event_callback.event.event_metadata || EventCallbackRequestEventMetadata.new

      if metadata.nil? || metadata.reported_for_app_id.nil? || metadata.reported_for_app_id.empty?
        return EVENT_TYPE_ACCOUNT_CALLBACK
      end

      return EVENT_TYPE_APP_CALLBACK
    end
  end
end
