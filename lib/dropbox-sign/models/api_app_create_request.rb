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
  class ApiAppCreateRequest
    # The domain names the ApiApp will be associated with.
    # @return [Array<String>]
    attr_accessor :domains

    # The name you want to assign to the ApiApp.
    # @return [String]
    attr_accessor :name

    # The URL at which the ApiApp should receive event callbacks.
    # @return [String]
    attr_accessor :callback_url

    # An image file to use as a custom logo in embedded contexts. (Only applies to some API plans)
    # @return [File]
    attr_accessor :custom_logo_file

    # @return [SubOAuth]
    attr_accessor :oauth

    # @return [SubOptions]
    attr_accessor :options

    # @return [SubWhiteLabelingOptions]
    attr_accessor :white_labeling_options

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'domains' => :'domains',
        :'name' => :'name',
        :'callback_url' => :'callback_url',
        :'custom_logo_file' => :'custom_logo_file',
        :'oauth' => :'oauth',
        :'options' => :'options',
        :'white_labeling_options' => :'white_labeling_options'
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
        :'domains' => :'Array<String>',
        :'name' => :'String',
        :'callback_url' => :'String',
        :'custom_logo_file' => :'File',
        :'oauth' => :'SubOAuth',
        :'options' => :'SubOptions',
        :'white_labeling_options' => :'SubWhiteLabelingOptions'
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
    # @return [ApiAppCreateRequest]
    def self.init(data)
      ApiClient.default.convert_to_type(
        data,
        "ApiAppCreateRequest"
      ) || ApiAppCreateRequest.new
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Dropbox::Sign::ApiAppCreateRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.merged_attributes.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Dropbox::Sign::ApiAppCreateRequest`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'domains')
        if (value = attributes[:'domains']).is_a?(Array)
          self.domains = value
        end
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'callback_url')
        self.callback_url = attributes[:'callback_url']
      end

      if attributes.key?(:'custom_logo_file')
        self.custom_logo_file = attributes[:'custom_logo_file']
      end

      if attributes.key?(:'oauth')
        self.oauth = attributes[:'oauth']
      end

      if attributes.key?(:'options')
        self.options = attributes[:'options']
      end

      if attributes.key?(:'white_labeling_options')
        self.white_labeling_options = attributes[:'white_labeling_options']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @domains.nil?
        invalid_properties.push('invalid value for "domains", domains cannot be nil.')
      end

      if @domains.length > 2
        invalid_properties.push('invalid value for "domains", number of items must be less than or equal to 2.')
      end

      if @domains.length < 1
        invalid_properties.push('invalid value for "domains", number of items must be greater than or equal to 1.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @domains.nil?
      return false if @domains.length > 2
      return false if @domains.length < 1
      return false if @name.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] domains Value to be assigned
    def domains=(domains)
      if domains.nil?
        fail ArgumentError, 'domains cannot be nil'
      end
      if domains.length > 2
        fail ArgumentError, 'invalid value for "domains", number of items must be less than or equal to 2.'
      end

      if domains.length < 1
        fail ArgumentError, 'invalid value for "domains", number of items must be greater than or equal to 1.'
      end

      @domains = domains
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if name.nil?
        fail ArgumentError, 'name cannot be nil'
      end

      @name = name
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          domains == o.domains &&
          name == o.name &&
          callback_url == o.callback_url &&
          custom_logo_file == o.custom_logo_file &&
          oauth == o.oauth &&
          options == o.options &&
          white_labeling_options == o.white_labeling_options
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [domains, name, callback_url, custom_logo_file, oauth, options, white_labeling_options].hash
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
