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
  # An array of elements and values serialized to a string, to be used to customize the app's signer page. (Only applies to some API plans)  Take a look at our [white labeling guide](https://developers.hellosign.com/api/reference/premium-branding/) to learn more.
  class SubWhiteLabelingOptions
    # @return [String]
    attr_accessor :header_background_color

    # @return [String]
    attr_accessor :legal_version

    # @return [String]
    attr_accessor :link_color

    # @return [String]
    attr_accessor :page_background_color

    # @return [String]
    attr_accessor :primary_button_color

    # @return [String]
    attr_accessor :primary_button_color_hover

    # @return [String]
    attr_accessor :primary_button_text_color

    # @return [String]
    attr_accessor :primary_button_text_color_hover

    # @return [String]
    attr_accessor :secondary_button_color

    # @return [String]
    attr_accessor :secondary_button_color_hover

    # @return [String]
    attr_accessor :secondary_button_text_color

    # @return [String]
    attr_accessor :secondary_button_text_color_hover

    # @return [String]
    attr_accessor :text_color1

    # @return [String]
    attr_accessor :text_color2

    # Resets white labeling options to defaults. Only useful when updating an API App.
    # @return [Boolean]
    attr_accessor :reset_to_default

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
        :'header_background_color' => :'header_background_color',
        :'legal_version' => :'legal_version',
        :'link_color' => :'link_color',
        :'page_background_color' => :'page_background_color',
        :'primary_button_color' => :'primary_button_color',
        :'primary_button_color_hover' => :'primary_button_color_hover',
        :'primary_button_text_color' => :'primary_button_text_color',
        :'primary_button_text_color_hover' => :'primary_button_text_color_hover',
        :'secondary_button_color' => :'secondary_button_color',
        :'secondary_button_color_hover' => :'secondary_button_color_hover',
        :'secondary_button_text_color' => :'secondary_button_text_color',
        :'secondary_button_text_color_hover' => :'secondary_button_text_color_hover',
        :'text_color1' => :'text_color1',
        :'text_color2' => :'text_color2',
        :'reset_to_default' => :'reset_to_default'
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
        :'header_background_color' => :'String',
        :'legal_version' => :'String',
        :'link_color' => :'String',
        :'page_background_color' => :'String',
        :'primary_button_color' => :'String',
        :'primary_button_color_hover' => :'String',
        :'primary_button_text_color' => :'String',
        :'primary_button_text_color_hover' => :'String',
        :'secondary_button_color' => :'String',
        :'secondary_button_color_hover' => :'String',
        :'secondary_button_text_color' => :'String',
        :'secondary_button_text_color_hover' => :'String',
        :'text_color1' => :'String',
        :'text_color2' => :'String',
        :'reset_to_default' => :'Boolean'
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
    # @return [SubWhiteLabelingOptions]
    def self.init(data)
      ApiClient.default.convert_to_type(
        data,
        "SubWhiteLabelingOptions"
      ) || SubWhiteLabelingOptions.new
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Dropbox::Sign::SubWhiteLabelingOptions` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.merged_attributes.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Dropbox::Sign::SubWhiteLabelingOptions`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'header_background_color')
        self.header_background_color = attributes[:'header_background_color']
      else
        self.header_background_color = '#1a1a1a'
      end

      if attributes.key?(:'legal_version')
        self.legal_version = attributes[:'legal_version']
      else
        self.legal_version = 'terms1'
      end

      if attributes.key?(:'link_color')
        self.link_color = attributes[:'link_color']
      else
        self.link_color = '#0061FE'
      end

      if attributes.key?(:'page_background_color')
        self.page_background_color = attributes[:'page_background_color']
      else
        self.page_background_color = '#f7f8f9'
      end

      if attributes.key?(:'primary_button_color')
        self.primary_button_color = attributes[:'primary_button_color']
      else
        self.primary_button_color = '#0061FE'
      end

      if attributes.key?(:'primary_button_color_hover')
        self.primary_button_color_hover = attributes[:'primary_button_color_hover']
      else
        self.primary_button_color_hover = '#0061FE'
      end

      if attributes.key?(:'primary_button_text_color')
        self.primary_button_text_color = attributes[:'primary_button_text_color']
      else
        self.primary_button_text_color = '#ffffff'
      end

      if attributes.key?(:'primary_button_text_color_hover')
        self.primary_button_text_color_hover = attributes[:'primary_button_text_color_hover']
      else
        self.primary_button_text_color_hover = '#ffffff'
      end

      if attributes.key?(:'secondary_button_color')
        self.secondary_button_color = attributes[:'secondary_button_color']
      else
        self.secondary_button_color = '#ffffff'
      end

      if attributes.key?(:'secondary_button_color_hover')
        self.secondary_button_color_hover = attributes[:'secondary_button_color_hover']
      else
        self.secondary_button_color_hover = '#ffffff'
      end

      if attributes.key?(:'secondary_button_text_color')
        self.secondary_button_text_color = attributes[:'secondary_button_text_color']
      else
        self.secondary_button_text_color = '#0061FE'
      end

      if attributes.key?(:'secondary_button_text_color_hover')
        self.secondary_button_text_color_hover = attributes[:'secondary_button_text_color_hover']
      else
        self.secondary_button_text_color_hover = '#0061FE'
      end

      if attributes.key?(:'text_color1')
        self.text_color1 = attributes[:'text_color1']
      else
        self.text_color1 = '#808080'
      end

      if attributes.key?(:'text_color2')
        self.text_color2 = attributes[:'text_color2']
      else
        self.text_color2 = '#ffffff'
      end

      if attributes.key?(:'reset_to_default')
        self.reset_to_default = attributes[:'reset_to_default']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      legal_version_validator = EnumAttributeValidator.new('String', ["terms1", "terms2"])
      return false unless legal_version_validator.valid?(@legal_version)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] legal_version Object to be assigned
    def legal_version=(legal_version)
      validator = EnumAttributeValidator.new('String', ["terms1", "terms2"])
      unless validator.valid?(legal_version)
        fail ArgumentError, "invalid value for \"legal_version\", must be one of #{validator.allowable_values}."
      end
      @legal_version = legal_version
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          header_background_color == o.header_background_color &&
          legal_version == o.legal_version &&
          link_color == o.link_color &&
          page_background_color == o.page_background_color &&
          primary_button_color == o.primary_button_color &&
          primary_button_color_hover == o.primary_button_color_hover &&
          primary_button_text_color == o.primary_button_text_color &&
          primary_button_text_color_hover == o.primary_button_text_color_hover &&
          secondary_button_color == o.secondary_button_color &&
          secondary_button_color_hover == o.secondary_button_color_hover &&
          secondary_button_text_color == o.secondary_button_text_color &&
          secondary_button_text_color_hover == o.secondary_button_text_color_hover &&
          text_color1 == o.text_color1 &&
          text_color2 == o.text_color2 &&
          reset_to_default == o.reset_to_default
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [header_background_color, legal_version, link_color, page_background_color, primary_button_color, primary_button_color_hover, primary_button_text_color, primary_button_text_color_hover, secondary_button_color, secondary_button_color_hover, secondary_button_text_color, secondary_button_text_color_hover, text_color1, text_color2, reset_to_default].hash
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
