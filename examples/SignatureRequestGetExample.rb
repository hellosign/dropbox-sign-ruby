require "json"
require "dropbox-sign"

Dropbox::Sign.configure do |config|
  config.username = "YOUR_API_KEY"
  # config.access_token = "YOUR_ACCESS_TOKEN"
end

begin
  response = Dropbox::Sign::SignatureRequestApi.new.signature_request_get(
    "fa5c8a0b0f492d768749333ad6fcc214c111e967", # signature_request_id
  )

  p response
rescue Dropbox::Sign::ApiError => e
  puts "Exception when calling SignatureRequestApi#signature_request_get: #{e}"
end
