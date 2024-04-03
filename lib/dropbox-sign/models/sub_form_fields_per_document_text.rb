=begin
#Dropbox Sign API

#Dropbox Sign v3 API

The version of the OpenAPI document: 3.0.0
Contact: apisupport@hellosign.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.0

=end

require 'date'
require 'time'

module Dropbox
end

module Dropbox::Sign
  # This class extends `SubFormFieldsPerDocumentBase`.
  class SubFormFieldsPerDocumentText < SubFormFieldsPerDocumentBase
    # A text input field. Use the `SubFormFieldsPerDocumentText` class.
    # @return [String]
    attr_accessor :type

    # Placeholder value for text field.
    # @return [String]
    attr_accessor :placeholder

    # Auto fill type for populating fields automatically. Check out the list of [auto fill types](/api/reference/constants/#auto-fill-types) to learn more about the possible values.
    # @return [String]
    attr_accessor :auto_fill_type

    # Link two or more text fields. Enter data into one linked text field, which automatically fill all other linked text fields.
    # @return [String]
    attr_accessor :link_id

    # Masks entered data. For more information see [Masking sensitive information](https://faq.hellosign.com/hc/en-us/articles/360040742811-Masking-sensitive-information). `true` for masking the data in a text field, otherwise `false`.
    # @return [Boolean]
    attr_accessor :masked

    # Each text field may contain a `validation_type` parameter. Check out the list of [validation types](https://faq.hellosign.com/hc/en-us/articles/217115577) to learn more about the possible values.  **NOTE**: When using `custom_regex` you are required to pass a second parameter `validation_custom_regex` and you can optionally provide `validation_custom_regex_format_label` for the error message the user will see in case of an invalid value.
    # @return [String]
    attr_accessor :validation_type

    # @return [String]
    attr_accessor :validation_custom_regex

    # @return [String]
    attr_accessor :validation_custom_regex_format_label

    # Content of a `me_now` text field
    # @return [String]
    attr_accessor :content

    # Font family for the field.
    # @return [String]
    attr_accessor :font_family

    # The initial px font size for the field contents. Can be any integer value between `7` and `49`.  **NOTE**: Font size may be reduced during processing in order to fit the contents within the dimensions of the field.
    # @return [Integer]
    attr_accessor :font_size

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'type' => :'type',
        :'placeholder' => :'placeholder',
        :'auto_fill_type' => :'auto_fill_type',
        :'link_id' => :'link_id',
        :'masked' => :'masked',
        :'validation_type' => :'validation_type',
        :'validation_custom_regex' => :'validation_custom_regex',
        :'validation_custom_regex_format_label' => :'validation_custom_regex_format_label',
        :'content' => :'content',
        :'font_family' => :'font_family',
        :'font_size' => :'font_size'
      }
    end

    # Returns all the JSON keys this model knows about, including the ones defined in its parent(s)
    def self.acceptable_attributes
      attribute_map.values.concat(superclass.acceptable_attributes)
    end

    # Returns attribute map of this model + parent
    def self.merged_attributes
      self.superclass.attribute_map.merge(self.attribute_map)
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'type' => :'String',
        :'placeholder' => :'String',
        :'auto_fill_type' => :'String',
        :'link_id' => :'String',
        :'masked' => :'Boolean',
        :'validation_type' => :'String',
        :'validation_custom_regex' => :'String',
        :'validation_custom_regex_format_label' => :'String',
        :'content' => :'String',
        :'font_family' => :'String',
        :'font_size' => :'Integer'
      }
    end

    # Attribute type mapping of this model + parent
    def self.merged_types
      self.superclass.openapi_types.merge(self.openapi_types)
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Returns list of attributes with nullable: true of this model + parent
    def self.merged_nullable
      self.superclass.openapi_nullable.merge(self.openapi_nullable)
    end

    # Attempt to instantiate and hydrate a new instance of this class
    # @param [Object] data Data to be converted
    # @return [SubFormFieldsPerDocumentText]
    def self.init(data)
      return ApiClient.default.convert_to_type(
        data,
        "SubFormFieldsPerDocumentText"
      ) || SubFormFieldsPerDocumentText.new
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Dropbox::Sign::SubFormFieldsPerDocumentText` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.merged_attributes.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Dropbox::Sign::SubFormFieldsPerDocumentText`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      # call parent's initialize
      super(attributes)

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      else
        self.type = 'text'
      end

      if attributes.key?(:'placeholder')
        self.placeholder = attributes[:'placeholder']
      end

      if attributes.key?(:'auto_fill_type')
        self.auto_fill_type = attributes[:'auto_fill_type']
      end

      if attributes.key?(:'link_id')
        self.link_id = attributes[:'link_id']
      end

      if attributes.key?(:'masked')
        self.masked = attributes[:'masked']
      end

      if attributes.key?(:'validation_type')
        self.validation_type = attributes[:'validation_type']
      end

      if attributes.key?(:'validation_custom_regex')
        self.validation_custom_regex = attributes[:'validation_custom_regex']
      end

      if attributes.key?(:'validation_custom_regex_format_label')
        self.validation_custom_regex_format_label = attributes[:'validation_custom_regex_format_label']
      end

      if attributes.key?(:'content')
        self.content = attributes[:'content']
      end

      if attributes.key?(:'font_family')
        self.font_family = attributes[:'font_family']
      end

      if attributes.key?(:'font_size')
        self.font_size = attributes[:'font_size']
      else
        self.font_size = 12
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = super
      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @type.nil?
      validation_type_validator = EnumAttributeValidator.new('String', ["numbers_only", "letters_only", "phone_number", "bank_routing_number", "bank_account_number", "email_address", "zip_code", "social_security_number", "employer_identification_number", "custom_regex"])
      return false unless validation_type_validator.valid?(@validation_type)
      font_family_validator = EnumAttributeValidator.new('String', ["helvetica", "arial", "courier", "calibri", "cambria", "georgia", "times", "trebuchet", "verdana", "roboto", "robotoMono", "notoSans", "notoSerif", "notoCJK-JP-Regular", "notoHebrew-Regular", "notoSanThaiMerged"])
      return false unless font_family_validator.valid?(@font_family)
      true && super
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] validation_type Object to be assigned
    def validation_type=(validation_type)
      validator = EnumAttributeValidator.new('String', ["numbers_only", "letters_only", "phone_number", "bank_routing_number", "bank_account_number", "email_address", "zip_code", "social_security_number", "employer_identification_number", "custom_regex"])
      unless validator.valid?(validation_type)
        fail ArgumentError, "invalid value for \"validation_type\", must be one of #{validator.allowable_values}."
      end
      @validation_type = validation_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] font_family Object to be assigned
    def font_family=(font_family)
      validator = EnumAttributeValidator.new('String', ["helvetica", "arial", "courier", "calibri", "cambria", "georgia", "times", "trebuchet", "verdana", "roboto", "robotoMono", "notoSans", "notoSerif", "notoCJK-JP-Regular", "notoHebrew-Regular", "notoSanThaiMerged"])
      unless validator.valid?(font_family)
        fail ArgumentError, "invalid value for \"font_family\", must be one of #{validator.allowable_values}."
      end
      @font_family = font_family
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          placeholder == o.placeholder &&
          auto_fill_type == o.auto_fill_type &&
          link_id == o.link_id &&
          masked == o.masked &&
          validation_type == o.validation_type &&
          validation_custom_regex == o.validation_custom_regex &&
          validation_custom_regex_format_label == o.validation_custom_regex_format_label &&
          content == o.content &&
          font_family == o.font_family &&
          font_size == o.font_size && super(o)
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [type, placeholder, auto_fill_type, link_id, masked, validation_type, validation_custom_regex, validation_custom_regex_format_label, content, font_family, font_size].hash
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
      super(attributes)
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
      when :File
        value
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
        # models (e.g. Pet)
        klass = Dropbox::Sign.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
      hash = super
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
