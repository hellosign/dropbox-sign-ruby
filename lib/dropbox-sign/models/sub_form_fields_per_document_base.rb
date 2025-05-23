=begin
#Dropbox Sign API

#Dropbox Sign v3 API

The version of the OpenAPI document: 3.0.0
Contact: apisupport@hellosign.com
Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'date'
require 'time'

module Dropbox
end

module Dropbox::Sign
  # The fields that should appear on the document, expressed as an array of objects. (For more details you can read about it here: [Using Form Fields per Document](/docs/openapi/form-fields-per-document).)  **NOTE:** Fields like **text**, **dropdown**, **checkbox**, **radio**, and **hyperlink** have additional required and optional parameters. Check out the list of [additional parameters](/api/reference/constants/#form-fields-per-document) for these field types.  * Text Field use `SubFormFieldsPerDocumentText` * Dropdown Field use `SubFormFieldsPerDocumentDropdown` * Hyperlink Field use `SubFormFieldsPerDocumentHyperlink` * Checkbox Field use `SubFormFieldsPerDocumentCheckbox` * Radio Field use `SubFormFieldsPerDocumentRadio` * Signature Field use `SubFormFieldsPerDocumentSignature` * Date Signed Field use `SubFormFieldsPerDocumentDateSigned` * Initials Field use `SubFormFieldsPerDocumentInitials` * Text Merge Field use `SubFormFieldsPerDocumentTextMerge` * Checkbox Merge Field use `SubFormFieldsPerDocumentCheckboxMerge`
  class SubFormFieldsPerDocumentBase
    # Represents the integer index of the `file` or `file_url` document the field should be attached to.
    # @return [Integer]
    attr_accessor :document_index

    # An identifier for the field that is unique across all documents in the request.
    # @return [String]
    attr_accessor :api_id

    # Size of the field in pixels.
    # @return [Integer]
    attr_accessor :height

    # Whether this field is required.
    # @return [Boolean]
    attr_accessor :required

    # Signer index identified by the offset in the signers parameter (0-based indexing), indicating which signer should fill out the field.  **NOTE:** To set the value of the field as the preparer you must set this to `me_now`  **NOTE:** If type is `text-merge` or `checkbox-merge`, you must set this to sender in order to use pre-filled data.
    # @return [Integer, String]
    attr_accessor :signer

    # @return [String]
    attr_accessor :type

    # Size of the field in pixels.
    # @return [Integer]
    attr_accessor :width

    # Location coordinates of the field in pixels.
    # @return [Integer]
    attr_accessor :x

    # Location coordinates of the field in pixels.
    # @return [Integer]
    attr_accessor :y

    # Display name for the field.
    # @return [String]
    attr_accessor :name

    # Page in the document where the field should be placed (requires documents be PDF files).  - When the page number parameter is supplied, the API will use the new coordinate system. - Check out the differences between both [coordinate systems](https://faq.hellosign.com/hc/en-us/articles/217115577) and how to use them.
    # @return [Integer, nil]
    attr_accessor :page

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'document_index' => :'document_index',
        :'api_id' => :'api_id',
        :'height' => :'height',
        :'required' => :'required',
        :'signer' => :'signer',
        :'type' => :'type',
        :'width' => :'width',
        :'x' => :'x',
        :'y' => :'y',
        :'name' => :'name',
        :'page' => :'page'
      }
    end

    # Returns attribute mapping this model knows about
    def self.acceptable_attribute_map
      attribute_map
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      acceptable_attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'document_index' => :'Integer',
        :'api_id' => :'String',
        :'height' => :'Integer',
        :'required' => :'Boolean',
        :'signer' => :'String',
        :'type' => :'String',
        :'width' => :'Integer',
        :'x' => :'Integer',
        :'y' => :'Integer',
        :'name' => :'String',
        :'page' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'page'
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

    # discriminator's property name in OpenAPI v3
    def self.openapi_discriminator_name
      :'type'
    end

    def self.discriminator_class_name(value)
      return nil unless value.is_a?(String)

      if value == 'checkbox'
        return "Dropbox::Sign::SubFormFieldsPerDocumentCheckbox"
      end
      if value == 'checkbox-merge'
        return "Dropbox::Sign::SubFormFieldsPerDocumentCheckboxMerge"
      end
      if value == 'date_signed'
        return "Dropbox::Sign::SubFormFieldsPerDocumentDateSigned"
      end
      if value == 'dropdown'
        return "Dropbox::Sign::SubFormFieldsPerDocumentDropdown"
      end
      if value == 'hyperlink'
        return "Dropbox::Sign::SubFormFieldsPerDocumentHyperlink"
      end
      if value == 'initials'
        return "Dropbox::Sign::SubFormFieldsPerDocumentInitials"
      end
      if value == 'radio'
        return "Dropbox::Sign::SubFormFieldsPerDocumentRadio"
      end
      if value == 'signature'
        return "Dropbox::Sign::SubFormFieldsPerDocumentSignature"
      end
      if value == 'text'
        return "Dropbox::Sign::SubFormFieldsPerDocumentText"
      end
      if value == 'text-merge'
        return "Dropbox::Sign::SubFormFieldsPerDocumentTextMerge"
      end

      nil
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Dropbox::Sign::SubFormFieldsPerDocumentBase` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.merged_attributes.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Dropbox::Sign::SubFormFieldsPerDocumentBase`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'document_index')
        self.document_index = attributes[:'document_index']
      end

      if attributes.key?(:'api_id')
        self.api_id = attributes[:'api_id']
      end

      if attributes.key?(:'height')
        self.height = attributes[:'height']
      end

      if attributes.key?(:'required')
        self.required = attributes[:'required']
      end

      if attributes.key?(:'signer')
        self.signer = attributes[:'signer']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'width')
        self.width = attributes[:'width']
      end

      if attributes.key?(:'x')
        self.x = attributes[:'x']
      end

      if attributes.key?(:'y')
        self.y = attributes[:'y']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'page')
        self.page = attributes[:'page']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @document_index.nil?
        invalid_properties.push('invalid value for "document_index", document_index cannot be nil.')
      end

      if @api_id.nil?
        invalid_properties.push('invalid value for "api_id", api_id cannot be nil.')
      end

      if @height.nil?
        invalid_properties.push('invalid value for "height", height cannot be nil.')
      end

      if @required.nil?
        invalid_properties.push('invalid value for "required", required cannot be nil.')
      end

      if @signer.nil?
        invalid_properties.push('invalid value for "signer", signer cannot be nil.')
      end

      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      if @width.nil?
        invalid_properties.push('invalid value for "width", width cannot be nil.')
      end

      if @x.nil?
        invalid_properties.push('invalid value for "x", x cannot be nil.')
      end

      if @y.nil?
        invalid_properties.push('invalid value for "y", y cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @document_index.nil?
      return false if @api_id.nil?
      return false if @height.nil?
      return false if @required.nil?
      return false if @signer.nil?
      return false if @type.nil?
      return false if @width.nil?
      return false if @x.nil?
      return false if @y.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] document_index Value to be assigned
    def document_index=(document_index)
      if document_index.nil?
        fail ArgumentError, 'document_index cannot be nil'
      end

      @document_index = document_index
    end

    # Custom attribute writer method with validation
    # @param [Object] api_id Value to be assigned
    def api_id=(api_id)
      if api_id.nil?
        fail ArgumentError, 'api_id cannot be nil'
      end

      @api_id = api_id
    end

    # Custom attribute writer method with validation
    # @param [Object] height Value to be assigned
    def height=(height)
      if height.nil?
        fail ArgumentError, 'height cannot be nil'
      end

      @height = height
    end

    # Custom attribute writer method with validation
    # @param [Object] required Value to be assigned
    def required=(required)
      if required.nil?
        fail ArgumentError, 'required cannot be nil'
      end

      @required = required
    end

    # Custom attribute writer method with validation
    # @param [Object] signer Value to be assigned
    def signer=(signer)
      if signer.nil?
        fail ArgumentError, 'signer cannot be nil'
      end

      @signer = signer
    end

    # Custom attribute writer method with validation
    # @param [Object] type Value to be assigned
    def type=(type)
      if type.nil?
        fail ArgumentError, 'type cannot be nil'
      end

      @type = type
    end

    # Custom attribute writer method with validation
    # @param [Object] width Value to be assigned
    def width=(width)
      if width.nil?
        fail ArgumentError, 'width cannot be nil'
      end

      @width = width
    end

    # Custom attribute writer method with validation
    # @param [Object] x Value to be assigned
    def x=(x)
      if x.nil?
        fail ArgumentError, 'x cannot be nil'
      end

      @x = x
    end

    # Custom attribute writer method with validation
    # @param [Object] y Value to be assigned
    def y=(y)
      if y.nil?
        fail ArgumentError, 'y cannot be nil'
      end

      @y = y
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          document_index == o.document_index &&
          api_id == o.api_id &&
          height == o.height &&
          required == o.required &&
          signer == o.signer &&
          type == o.type &&
          width == o.width &&
          x == o.x &&
          y == o.y &&
          name == o.name &&
          page == o.page
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [document_index, api_id, height, required, signer, type, width, x, y, name, page].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      if !attributes[self.openapi_discriminator_name].nil?
        klass = self.discriminator_class_name(attributes[self.openapi_discriminator_name])
        if klass != new.class.to_s
          obj = Object.const_get(klass).new.build_from_hash(attributes)
          return obj
        end
      end
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
