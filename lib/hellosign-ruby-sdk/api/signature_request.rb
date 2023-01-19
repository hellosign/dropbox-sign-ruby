module HelloSign
  module Api

    #
    # Contains all the api about the SignatureRequest resource.
    # Take a look at our {https://www.hellosign.com/api/reference#SignatureRequest signature request api document}
    # for more information about this.
    #
    # @author [hellosign]
    #
    module SignatureRequest

      #
      # Retrieves a Signature Request with the given ID.
      # @option opts [String] signature_request_id The id of the SignatureRequest to retrieve.
      #
      # @return [HelloSign::Resource::SignatureRequest] a SignatureRequest object
      #
      # @example
      #   signature_request = @client.get_signature_request :signature_request_id => '75cdf7dc8b323d43b347e4a3614d1f822bd09491'
      #
      def get_signature_request opts
        HelloSign::Resource::SignatureRequest.new get("/signature_request/#{opts[:signature_request_id]}")
      end

      #
      # Returns a list of SignatureRequests that you can access. This includes SignatureRequests you have sent as well as received, but not ones that you have been CCed on.
      # @option opts [Integer] page (1) Which page number of the ReusableForm List to return.
      #
      # @return [HelloSign::Resource::ResourceArray]
      #
      # @example
      #   signature_requests = @client.get_signature_requests :page => 1
      #
      def get_signature_requests opts={}
        HelloSign::Resource::ResourceArray.new get('/signature_request/list', opts), 'signature_requests',  HelloSign::Resource::SignatureRequest
      end

      #
      # Creates and sends a new SignatureRequest with the submitted documents.
      # If form_fields_per_document is not specified, a signature page will be affixed
      # where all signers will be required to add their signature, signifying their agreement to all contained documents.
      # @option opts [Integer] test_mode (0) Whether this is a test, the signature request will not be legally binding if set to 1.
      # @option opts [Array<String>] files Use files to indicate the uploaded file(s) to send for signature. Currently we only support use of either the files parameter or file_urls parameter, not both.
      # @option opts [Array<String>] file_urls Use file_urls to have HelloSign download the file(s) to send for signature. Currently we only support use of either the files parameter or file_urls parameter, not both.
      # @option opts [String] title The title you want to assign to the SignatureRequest.
      # @option opts [String] subject The subject in the email that will be sent to the signers.
      # @option opts [String] message The custom message in the email that will be sent to the signers.
      # @option opts [String] signing_redirect_url The URL you want the signer redirected to after they successfully sign.
      # @option opts [Array<Hash>] signers List of signers, each item is a Hash with these keys:
      #   * :name (String) Sender' name
      #   * :email_address (String) Sender's email address
      #   * :order (Integer) The order the signer is required to sign in
      #   * :pin (Integer) The 4-digit code that will secure this signer's signature page. You must have a business plan to use this feature.
      # @option opts [Array<String>] cc_email_addresses The email addresses that should be CCed.
      # @option opts [String] form_fields_per_document
      #
      # @return [HelloSign::Resource::SignatureRequest] a SignatureRequest
      #
      # @example
      #   signature_request = @client.send_signature_request(
      #     :test_mode => 1,
      #     :title => 'NDA with Acme Co.',
      #     :subject => 'The NDA we talked about',
      #     :message => 'Please sign this NDA and then we can discuss more. Let me know if you have any questions.',
      #     :signers => [{
      #         :email_address => 'jack@example.com',
      #         :name => 'Jack',
      #         :order => 0,
      #       },{
      #         :email_address => 'jill@example.com',
      #         :name => 'Jill',
      #         :order => 1,
      #       }
      #     ],
      #     :cc_email_addresses => ['lawyer@hellosign.com', 'lawyer@example.com'],
      #     :files => ['NDA.pdf', 'AppendixA.pdf']
      #   )
      #

      def send_signature_request opts
        prepare_files opts
        prepare_signers opts

        HelloSign::Resource::SignatureRequest.new post('/signature_request/send', :body => opts)
      end

      #
      # Creates and sends a new SignatureRequest based off of the ReusableForm specified with the reusable_form_id parameter.
      # @option opts [Integer] test_mode (0) Whether this is a test, the signature request will not be legally binding if set to 1.
      # @option opts [String] reusable_form_id The id of the ReusableForm to use when creating the SignatureRequest.
      # @option opts [String] title The title you want to assign to the SignatureRequest.
      # @option opts [String] subject The subject in the email that will be sent to the signers.
      # @option opts [String] message The custom message in the email that will be sent to the signers.
      # @option opts [String] signing_redirect_url The URL you want the signer redirected to after they successfully sign.
      # @option opts [Hash] signers List signers
      #   * :name (String) Sender' name
      #   * :email_address (String) Sender's email address
      #   * :order (Integer) The order the signer is required to sign in
      #   * :pin (Integer) The 4-digit code that will secure this signer's signature page. You must have a business plan to use this feature.
      # @option opts [Hash] ccs The email address of the CC filling the role of RoleName. Required when a CC role exists for the ReusableForm.
      # @option opts [Hash] custom_fields The value to fill in for custom field with the name of CustomFieldName. Required when a CustomField exists in the ReusableForm.
      #
      # @return [HelloSign::Resource::SignatureRequest] a SignatureRequest
      # @example
      #  signature_request = @client.send_signature_request_with_reusable_form(
      #    :test_mode => 1,
      #    :reusable_form_id => 'c26b8a16784a872da37ea946b9ddec7c1e11dff6',
      #    :title => 'Purchase Order',
      #    :subject => 'Purchase Order',
      #    :message => 'Glad we could come to an agreement.',
      #    :signers => [
      #      {
      #        :email_address => 'george@example.com',
      #        :name => 'George',
      #        :role => 'Client'
      #      }
      #    ],
      #    :ccs => [
      #      {
      #        :email_address =>'accounting@hellosign.com',
      #        :role => "Accounting"
      #      }
      #    ],
      #    :custom_fields => {
      #      :Cost => '$20,000'
      #    }
      #  )
      #
      def send_signature_request_with_reusable_form opts
        prepare_signers opts
        prepare_ccs opts
        HelloSign::Resource::SignatureRequest.new post('/signature_request/send_with_reusable_form', :body => opts)
      end

      #
      # Sends an email to the signer reminding them to sign the signature request.
      # @option opts [String] signature_request_id The id of the SignatureRequest to send a reminder for.
      # @option opts [String] email_address The email address of the signer to send a reminder to.
      #
      # @return [HelloSign::Resource::SignatureRequest] a SignatureRequest
      # @example
      #   signature_request = @client.remind_signature_request :signature_request_id => '75cdf7dc8b323d43b347e4a3614d1f822bd09491', :email_address => 'john@example.com'
      #
      def remind_signature_request opts
        HelloSign::Resource::SignatureRequest.new post("/signature_request/remind/#{opts[:signature_request_id]}", :body => opts)
      end

      #
      # Cancels a SignatureRequest.
      # @option opts [String] signature_request_id The id of the SignatureRequest to cancel.
      #
      # @example
      #   @client.cancel_signature_request :signature_request_id => '75cdf7dc8b323d43b347e4a3614d1f822bd09491'
      def cancel_signature_request opts
        post("/signature_request/cancel/#{opts[:signature_request_id]}", :body => opts)
      end

      #
      # Download the PDF copy of the current documents specified by the signature_request_id parameter.
      # @option opts [String] signature_request_id The id of the SignatureRequest to retrieve.
      #
      # @return a PDF
      #
      # @example
      #   pdf = @client.signature_request_files :signature_request_id => '75cdf7dc8b323d43b347e4a3614d1f822bd09491'
      #
      def signature_request_files opts
        get("/signature_request/files/#{opts[:signature_request_id]}")
      end


      #
      # Download the PDF copy of the finalized documents specified by the signature_request_id parameter
      # @deprecated Use {#signature_request_files} instead.
      #
      # @option opts [String] signature_request_id The id of the SignatureRequest to retrieve.
      #
      # @return a PDF
      # @example
      #   pdf = @client.signature_request_final_copy :signature_request_id => '75cdf7dc8b323d43b347e4a3614d1f822bd09491'
      #
      def signature_request_final_copy opts
        get("/signature_request/final_copy/#{opts[:signature_request_id]}")
      end

      #
      # Creates a new SignatureRequest with the submitted documents to be signed in an embedded iFrame .
      # If form_fields_per_document is not specified, a signature page will be affixed where all signers will be required to add their signature, signifying their agreement to all contained documents.
      # Note that embedded signature requests can only be signed in embedded iFrames whereas normal signature requests can only be signed on HelloSign.
      # @option opts [Integer] test_mode (0) Whether this is a test, the signature request will not be legally binding if set to 1.
      # @option opts [String] client_id Client id of the app you're using to create this embedded signature request. Visit our  {https://www.hellosign.com/api/reference#Embedded embedded page} page to learn more about this parameter.
      # @option opts [Array<String>] files Use files to indicate the uploaded file(s) to send for signature. Currently we only support use of either the files parameter or file_urls parameter, not both.
      # @option opts [Array<String>] file_urls Use file_urls to have HelloSign download the file(s) to send for signature. Currently we only support use of either the files parameter or file_urls parameter, not both.
      # @option opts [String] title The title you want to assign to the SignatureRequest.
      # @option opts [String] subject The subject in the email that will be sent to the signers.
      # @option opts [String] message The custom message in the email that will be sent to the signers.
      # @option opts [String] signing_redirect_url The URL you want the signer redirected to after they successfully sign.
      # @option opts [Array<Hash>] signers List of signers, each item is a Hash with these keys:
      #   * :name (String) Sender' name
      #   * :email_address (String) Sender's email address
      #   * :order (Integer) The order the signer is required to sign in
      #   * :pin (Integer) The 4-digit code that will secure this signer's signature page. You must have a business plan to use this feature.
      # @option opts [Array<String>] cc_email_addresses The email addresses that should be CCed.
      # @option opts [String] form_fields_per_document
      #
      # @return [HelloSign::Resource::SignatureRequest] a SignatureRequest
      # @example
      #   request = @client.create_embedded_signature_request(
      #     :test_mode => 1,
      #     :client_id => 'b6b8e7deaf8f0b95c029dca049356d4a2cf9710a',
      #     :title => 'NDA with Acme Co.',
      #     :subject => 'The NDA we talked about',
      #     :message => 'Please sign this NDA and then we can discuss more. Let me know if you have any questions.',
      #     :signers => [{
      #         :email_address => 'jack@example.com',
      #         :name => 'Jack',
      #         :order => 0,
      #       },{
      #         :email_address => 'jill@example.com',
      #         :name => 'Jill',
      #         :order => 1,
      #       }
      #     ],
      #     :cc_email_addresses => ['lawyer@hellosign.com', 'lawyer@example.com'],
      #     :files => ['NDA.pdf', 'AppendixA.pdf']
      #   )
      #
      def create_embedded_signature_request opts
        opts[:client_id] ||= self.client_id
        prepare_files opts
        prepare_signers opts

        HelloSign::Resource::SignatureRequest.new post('/signature_request/create_embedded', :body => opts)
      end

      #
      # Creates a new SignatureRequest based on the given ReusableForm to be signed in an embedded iFrame.
      # Note that embedded signature requests can only be signed in embedded iFrames whereas normal signature requests can only be signed on HelloSign.
      # @option opts [Integer] test_mode (0) Whether this is a test, the signature request will not be legally binding if set to 1.
      # @option opts [String] client_id Client id of the app you're using to create this embedded signature request. Visit our  {https://www.hellosign.com/api/reference#Embedded embedded page} page to learn more about this parameter.
      # @option opts [String] reusable_form_id The id of the ReusableForm to use when creating the SignatureRequest.
      # @option opts [String] title The title you want to assign to the SignatureRequest.
      # @option opts [String] subject The subject in the email that will be sent to the signers.
      # @option opts [String] message The custom message in the email that will be sent to the signers.
      # @option opts [String] signing_redirect_url The URL you want the signer redirected to after they successfully sign.
      # @option opts [Array<Hash>] signers List of signers, each item is a Hash with these keys:
      #   * :name (String) Sender' name
      #   * :email_address (String) Sender's email address
      #   * :order (Integer) The order the signer is required to sign in
      #   * :pin (Integer) The 4-digit code that will secure this signer's signature page. You must have a business plan to use this feature.
      # @option opts [Hash] ccs The email address of the CC filling the role of RoleName. Required when a CC role exists for the ReusableForm.
      # @option opts [Hash] custom_fields The value to fill in for custom field with the name of CustomFieldName. Required when a CustomField exists in the ReusableForm.
      # @return [HelloSign::Resource::SignatureRequest] a SignatureRequest
      # @example
      #   request = @client.create_embedded_signature_request_with_reusable_form(
      #     :test_mode => 1,
      #     :client_id => 'b6b8e7deaf8f0b95c029dca049356d4a2cf9710a',
      #     :reusable_form_id => 'c26b8a16784a872da37ea946b9ddec7c1e11dff6',
      #     :title => 'Purchase Order',
      #     :subject => 'Purchase Order',
      #     :message => 'Glad we could come to an agreement.',
      #     :signers => [
      #       {
      #         :email_address => 'george@example.com',
      #         :name => 'George',
      #         :role => 'Client'
      #       }
      #     ],
      #     :ccs => [
      #       {
      #         :email_address =>'accounting@hellosign.com',
      #         :role => "Accounting"
      #       }
      #     ],
      #     :custom_fields => {
      #       :Cost => '$20,000'
      #     }
      #   )
      #
      def create_embedded_signature_request_with_reusable_form opts
        opts[:client_id] ||= self.client_id
        prepare_signers opts
        prepare_ccs opts

        HelloSign::Resource::SignatureRequest.new post('/signature_request/create_embedded_with_reusable_form', :body => opts)
      end
    end
  end
end
