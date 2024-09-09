=begin
#Dropbox Sign API

#Dropbox Sign v3 API

The version of the OpenAPI document: 3.0.0
Contact: apisupport@hellosign.com
Generated by: https://openapi-generator.tech
Generator version: 7.8.0

=end

require 'date'
require 'time'

module Dropbox
end

module Dropbox::Sign
  class UnclaimedDraftCreateEmbeddedWithTemplateRequest
    # Client id of the app used to create the draft. Used to apply the branding and callback url defined for the app.
    # @return [String]
    attr_accessor :client_id

    # The email address of the user that should be designated as the requester of this draft.
    # @return [String]
    attr_accessor :requester_email_address

    # Use `template_ids` to create a SignatureRequest from one or more templates, in the order in which the templates will be used.
    # @return [Array<String>]
    attr_accessor :template_ids

    # Allows signers to decline to sign a document if `true`. Defaults to `false`.
    # @return [Boolean]
    attr_accessor :allow_decline

    # Allows signers to reassign their signature requests to other signers if set to `true`. Defaults to `false`.  **NOTE:** Only available for Premium plan and higher.
    # @return [Boolean]
    attr_accessor :allow_reassign

    # Add CC email recipients. Required when a CC role exists for the Template.
    # @return [Array<SubCC>]
    attr_accessor :ccs

    # An array defining values and options for custom fields. Required when a custom field exists in the Template.
    # @return [Array<SubCustomField>]
    attr_accessor :custom_fields

    # @return [SubEditorOptions]
    attr_accessor :editor_options

    # @return [SubFieldOptions]
    attr_accessor :field_options

    # Use `files[]` to append additional files to the signature request being created from the template. Dropbox Sign will parse the files for [text tags](https://app.hellosign.com/api/textTagsWalkthrough) and append it to the signature request. Text tags for signers not on the template(s) will be ignored.  **files** or **file_urls[]** is required, but not both.
    # @return [Array<File>]
    attr_accessor :files

    # Use file_urls[] to append additional files to the signature request being created from the template. Dropbox Sign will download the file, then parse it for [text tags](https://app.hellosign.com/api/textTagsWalkthrough), and append to the signature request. Text tags for signers not on the template(s) will be ignored.  **files** or **file_urls[]** is required, but not both.
    # @return [Array<String>]
    attr_accessor :file_urls

    # Provide users the ability to review/edit the template signer roles.
    # @return [Boolean]
    attr_accessor :force_signer_roles

    # Provide users the ability to review/edit the template subject and message.
    # @return [Boolean]
    attr_accessor :force_subject_message

    # The request from this draft will not automatically send to signers post-claim if set to 1. Requester must [release](/api/reference/operation/signatureRequestReleaseHold/) the request from hold when ready to send. Defaults to `false`.
    # @return [Boolean]
    attr_accessor :hold_request

    # The request created from this draft will also be signable in embedded mode if set to `true`. Defaults to `false`.
    # @return [Boolean]
    attr_accessor :is_for_embedded_signing

    # The custom message in the email that will be sent to the signers.
    # @return [String]
    attr_accessor :message

    # Key-value data that should be attached to the signature request. This metadata is included in all API responses and events involving the signature request. For example, use the metadata field to store a signer's order number for look up when receiving events for the signature request.  Each request can include up to 10 metadata keys (or 50 nested metadata keys), with key names up to 40 characters long and values up to 1000 characters long.
    # @return [Hash<String, Object>]
    attr_accessor :metadata

    # This allows the requester to enable the preview experience (i.e. does not allow the requester's end user to add any additional fields via the editor).  - `preview_only=true`: Allows requesters to enable the preview only experience. - `preview_only=false`: Allows requesters to disable the preview only experience.  **NOTE:** This parameter overwrites `show_preview=1` (if set).
    # @return [Boolean]
    attr_accessor :preview_only

    # The URL you want signers redirected to after they successfully request a signature.
    # @return [String]
    attr_accessor :requesting_redirect_url

    # This allows the requester to enable the editor/preview experience.  - `show_preview=true`: Allows requesters to enable the editor/preview experience. - `show_preview=false`: Allows requesters to disable the editor/preview experience.
    # @return [Boolean]
    attr_accessor :show_preview

    # When only one step remains in the signature request process and this parameter is set to `false` then the progress stepper will be hidden.
    # @return [Boolean]
    attr_accessor :show_progress_stepper

    # Add Signers to your Templated-based Signature Request.
    # @return [Array<SubUnclaimedDraftTemplateSigner>]
    attr_accessor :signers

    # @return [SubSigningOptions]
    attr_accessor :signing_options

    # The URL you want signers redirected to after they successfully sign.
    # @return [String]
    attr_accessor :signing_redirect_url

    # Disables the \"Me (Now)\" option for the person preparing the document. Does not work with type `send_document`. Defaults to `false`.
    # @return [Boolean]
    attr_accessor :skip_me_now

    # The subject in the email that will be sent to the signers.
    # @return [String]
    attr_accessor :subject

    # Whether this is a test, the signature request created from this draft will not be legally binding if set to `true`. Defaults to `false`.
    # @return [Boolean]
    attr_accessor :test_mode

    # The title you want to assign to the SignatureRequest.
    # @return [String]
    attr_accessor :title

    # Controls whether [auto fill fields](https://faq.hellosign.com/hc/en-us/articles/360051467511-Auto-Fill-Fields) can automatically populate a signer's information during signing.  **NOTE:** Keep your signer's information safe by ensuring that the _signer on your signature request is the intended party_ before using this feature.
    # @return [Boolean]
    attr_accessor :populate_auto_fill_fields

    # This allows the requester to specify whether the user is allowed to provide email addresses to CC when claiming the draft.
    # @return [Boolean]
    attr_accessor :allow_ccs

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'client_id' => :'client_id',
        :'requester_email_address' => :'requester_email_address',
        :'template_ids' => :'template_ids',
        :'allow_decline' => :'allow_decline',
        :'allow_reassign' => :'allow_reassign',
        :'ccs' => :'ccs',
        :'custom_fields' => :'custom_fields',
        :'editor_options' => :'editor_options',
        :'field_options' => :'field_options',
        :'files' => :'files',
        :'file_urls' => :'file_urls',
        :'force_signer_roles' => :'force_signer_roles',
        :'force_subject_message' => :'force_subject_message',
        :'hold_request' => :'hold_request',
        :'is_for_embedded_signing' => :'is_for_embedded_signing',
        :'message' => :'message',
        :'metadata' => :'metadata',
        :'preview_only' => :'preview_only',
        :'requesting_redirect_url' => :'requesting_redirect_url',
        :'show_preview' => :'show_preview',
        :'show_progress_stepper' => :'show_progress_stepper',
        :'signers' => :'signers',
        :'signing_options' => :'signing_options',
        :'signing_redirect_url' => :'signing_redirect_url',
        :'skip_me_now' => :'skip_me_now',
        :'subject' => :'subject',
        :'test_mode' => :'test_mode',
        :'title' => :'title',
        :'populate_auto_fill_fields' => :'populate_auto_fill_fields',
        :'allow_ccs' => :'allow_ccs'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'client_id' => :'String',
        :'requester_email_address' => :'String',
        :'template_ids' => :'Array<String>',
        :'allow_decline' => :'Boolean',
        :'allow_reassign' => :'Boolean',
        :'ccs' => :'Array<SubCC>',
        :'custom_fields' => :'Array<SubCustomField>',
        :'editor_options' => :'SubEditorOptions',
        :'field_options' => :'SubFieldOptions',
        :'files' => :'Array<File>',
        :'file_urls' => :'Array<String>',
        :'force_signer_roles' => :'Boolean',
        :'force_subject_message' => :'Boolean',
        :'hold_request' => :'Boolean',
        :'is_for_embedded_signing' => :'Boolean',
        :'message' => :'String',
        :'metadata' => :'Hash<String, Object>',
        :'preview_only' => :'Boolean',
        :'requesting_redirect_url' => :'String',
        :'show_preview' => :'Boolean',
        :'show_progress_stepper' => :'Boolean',
        :'signers' => :'Array<SubUnclaimedDraftTemplateSigner>',
        :'signing_options' => :'SubSigningOptions',
        :'signing_redirect_url' => :'String',
        :'skip_me_now' => :'Boolean',
        :'subject' => :'String',
        :'test_mode' => :'Boolean',
        :'title' => :'String',
        :'populate_auto_fill_fields' => :'Boolean',
        :'allow_ccs' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Returns attribute map of this model + parent
    def self.merged_attributes
      self.attribute_map
    end

    # Attribute type mapping of this model + parent
    def self.merged_types
      self.openapi_types
    end

    # Returns list of attributes with nullable: true of this model + parent
    def self.merged_nullable
      self.openapi_nullable
    end

    # Attempt to instantiate and hydrate a new instance of this class
    # @param [Object] data Data to be converted
    # @return [UnclaimedDraftCreateEmbeddedWithTemplateRequest]
    def self.init(data)
      return ApiClient.default.convert_to_type(
        data,
        "UnclaimedDraftCreateEmbeddedWithTemplateRequest"
      ) || UnclaimedDraftCreateEmbeddedWithTemplateRequest.new
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Dropbox::Sign::UnclaimedDraftCreateEmbeddedWithTemplateRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.merged_attributes.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Dropbox::Sign::UnclaimedDraftCreateEmbeddedWithTemplateRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'client_id')
        self.client_id = attributes[:'client_id']
      end

      if attributes.key?(:'requester_email_address')
        self.requester_email_address = attributes[:'requester_email_address']
      end

      if attributes.key?(:'template_ids')
        if (value = attributes[:'template_ids']).is_a?(Array)
          self.template_ids = value
        end
      end

      if attributes.key?(:'allow_decline')
        self.allow_decline = attributes[:'allow_decline']
      else
        self.allow_decline = false
      end

      if attributes.key?(:'allow_reassign')
        self.allow_reassign = attributes[:'allow_reassign']
      else
        self.allow_reassign = false
      end

      if attributes.key?(:'ccs')
        if (value = attributes[:'ccs']).is_a?(Array)
          self.ccs = value
        end
      end

      if attributes.key?(:'custom_fields')
        if (value = attributes[:'custom_fields']).is_a?(Array)
          self.custom_fields = value
        end
      end

      if attributes.key?(:'editor_options')
        self.editor_options = attributes[:'editor_options']
      end

      if attributes.key?(:'field_options')
        self.field_options = attributes[:'field_options']
      end

      if attributes.key?(:'files')
        if (value = attributes[:'files']).is_a?(Array)
          self.files = value
        end
      end

      if attributes.key?(:'file_urls')
        if (value = attributes[:'file_urls']).is_a?(Array)
          self.file_urls = value
        end
      end

      if attributes.key?(:'force_signer_roles')
        self.force_signer_roles = attributes[:'force_signer_roles']
      else
        self.force_signer_roles = false
      end

      if attributes.key?(:'force_subject_message')
        self.force_subject_message = attributes[:'force_subject_message']
      else
        self.force_subject_message = false
      end

      if attributes.key?(:'hold_request')
        self.hold_request = attributes[:'hold_request']
      else
        self.hold_request = false
      end

      if attributes.key?(:'is_for_embedded_signing')
        self.is_for_embedded_signing = attributes[:'is_for_embedded_signing']
      else
        self.is_for_embedded_signing = false
      end

      if attributes.key?(:'message')
        self.message = attributes[:'message']
      end

      if attributes.key?(:'metadata')
        if (value = attributes[:'metadata']).is_a?(Hash)
          self.metadata = value
        end
      end

      if attributes.key?(:'preview_only')
        self.preview_only = attributes[:'preview_only']
      else
        self.preview_only = false
      end

      if attributes.key?(:'requesting_redirect_url')
        self.requesting_redirect_url = attributes[:'requesting_redirect_url']
      end

      if attributes.key?(:'show_preview')
        self.show_preview = attributes[:'show_preview']
      else
        self.show_preview = false
      end

      if attributes.key?(:'show_progress_stepper')
        self.show_progress_stepper = attributes[:'show_progress_stepper']
      else
        self.show_progress_stepper = true
      end

      if attributes.key?(:'signers')
        if (value = attributes[:'signers']).is_a?(Array)
          self.signers = value
        end
      end

      if attributes.key?(:'signing_options')
        self.signing_options = attributes[:'signing_options']
      end

      if attributes.key?(:'signing_redirect_url')
        self.signing_redirect_url = attributes[:'signing_redirect_url']
      end

      if attributes.key?(:'skip_me_now')
        self.skip_me_now = attributes[:'skip_me_now']
      else
        self.skip_me_now = false
      end

      if attributes.key?(:'subject')
        self.subject = attributes[:'subject']
      end

      if attributes.key?(:'test_mode')
        self.test_mode = attributes[:'test_mode']
      else
        self.test_mode = false
      end

      if attributes.key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.key?(:'populate_auto_fill_fields')
        self.populate_auto_fill_fields = attributes[:'populate_auto_fill_fields']
      else
        self.populate_auto_fill_fields = false
      end

      if attributes.key?(:'allow_ccs')
        self.allow_ccs = attributes[:'allow_ccs']
      else
        self.allow_ccs = false
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @client_id.nil?
        invalid_properties.push('invalid value for "client_id", client_id cannot be nil.')
      end

      if @requester_email_address.nil?
        invalid_properties.push('invalid value for "requester_email_address", requester_email_address cannot be nil.')
      end

      if @template_ids.nil?
        invalid_properties.push('invalid value for "template_ids", template_ids cannot be nil.')
      end

      if !@message.nil? && @message.to_s.length > 5000
        invalid_properties.push('invalid value for "message", the character length must be smaller than or equal to 5000.')
      end

      if !@subject.nil? && @subject.to_s.length > 255
        invalid_properties.push('invalid value for "subject", the character length must be smaller than or equal to 255.')
      end

      if !@title.nil? && @title.to_s.length > 255
        invalid_properties.push('invalid value for "title", the character length must be smaller than or equal to 255.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @client_id.nil?
      return false if @requester_email_address.nil?
      return false if @template_ids.nil?
      return false if !@message.nil? && @message.to_s.length > 5000
      return false if !@subject.nil? && @subject.to_s.length > 255
      return false if !@title.nil? && @title.to_s.length > 255
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] message Value to be assigned
    def message=(message)
      if message.to_s.length > 5000
        fail ArgumentError, 'invalid value for "message", the character length must be smaller than or equal to 5000.'
      end

      @message = message
    end

    # Custom attribute writer method with validation
    # @param [Object] metadata Value to be assigned
    def metadata=(metadata)
      @metadata = metadata
    end

    # Custom attribute writer method with validation
    # @param [Object] subject Value to be assigned
    def subject=(subject)
      if subject.to_s.length > 255
        fail ArgumentError, 'invalid value for "subject", the character length must be smaller than or equal to 255.'
      end

      @subject = subject
    end

    # Custom attribute writer method with validation
    # @param [Object] title Value to be assigned
    def title=(title)
      if title.to_s.length > 255
        fail ArgumentError, 'invalid value for "title", the character length must be smaller than or equal to 255.'
      end

      @title = title
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          client_id == o.client_id &&
          requester_email_address == o.requester_email_address &&
          template_ids == o.template_ids &&
          allow_decline == o.allow_decline &&
          allow_reassign == o.allow_reassign &&
          ccs == o.ccs &&
          custom_fields == o.custom_fields &&
          editor_options == o.editor_options &&
          field_options == o.field_options &&
          files == o.files &&
          file_urls == o.file_urls &&
          force_signer_roles == o.force_signer_roles &&
          force_subject_message == o.force_subject_message &&
          hold_request == o.hold_request &&
          is_for_embedded_signing == o.is_for_embedded_signing &&
          message == o.message &&
          metadata == o.metadata &&
          preview_only == o.preview_only &&
          requesting_redirect_url == o.requesting_redirect_url &&
          show_preview == o.show_preview &&
          show_progress_stepper == o.show_progress_stepper &&
          signers == o.signers &&
          signing_options == o.signing_options &&
          signing_redirect_url == o.signing_redirect_url &&
          skip_me_now == o.skip_me_now &&
          subject == o.subject &&
          test_mode == o.test_mode &&
          title == o.title &&
          populate_auto_fill_fields == o.populate_auto_fill_fields &&
          allow_ccs == o.allow_ccs
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [client_id, requester_email_address, template_ids, allow_decline, allow_reassign, ccs, custom_fields, editor_options, field_options, files, file_urls, force_signer_roles, force_subject_message, hold_request, is_for_embedded_signing, message, metadata, preview_only, requesting_redirect_url, show_preview, show_progress_stepper, signers, signing_options, signing_redirect_url, skip_me_now, subject, test_mode, title, populate_auto_fill_fields, allow_ccs].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attribute_map = self.class.merged_attributes

      self.class.merged_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        klass = Dropbox::Sign.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash(include_nil = true)
      hash = {}
      self.class.merged_attributes.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          next unless include_nil
          is_nullable = self.class.merged_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value, include_nil)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value, include_nil = true)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v, include_nil) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v, include_nil) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash(include_nil)
      else
        value
      end
    end

  end

end
