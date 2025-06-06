require "json"
require "dropbox-sign"

Dropbox::Sign.configure do |config|
  config.username = "YOUR_API_KEY"
  # config.access_token = "YOUR_ACCESS_TOKEN"
end

account_create_request = Dropbox::Sign::AccountCreateRequest.new
account_create_request.email_address = "newuser@dropboxsign.com"
account_create_request.client_id = "cc91c61d00f8bb2ece1428035716b"
account_create_request.client_secret = "1d14434088507ffa390e6f5528465"

begin
  response = Dropbox::Sign::AccountApi.new.account_create(
    account_create_request,
  )

  p response
rescue Dropbox::Sign::ApiError => e
  puts "Exception when calling AccountApi#account_create: #{e}"
end
