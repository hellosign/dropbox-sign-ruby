=begin
#HelloSign API

#HelloSign v3 API

The version of the OpenAPI document: 3.0.0
Contact: apisupport@hellosign.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.0

=end

require 'date'
require 'time'

module HelloSign
  class TemplateUpdateFilesRequest
    # Client id of the app you're using to update this template.
    attr_accessor :client_id

    # Use `file[]` to indicate the uploaded file(s) to use for the template.  This endpoint requires either **file** or **file_url[]**, but not both.
    attr_accessor :file

    # Use `file_url[]` to have HelloSign download the file(s) to use for the template.  This endpoint requires either **file** or **file_url[]**, but not both.
    attr_accessor :file_url

    # The new default template email message.
    attr_accessor :message

    # The new default template email subject.
    attr_accessor :subject

    # Whether this is a test, the signature request created from this draft will not be legally binding if set to `true`. Defaults to `false`.
    attr_accessor :test_mode

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'client_id' => :'client_id',
        :'file' => :'file',
        :'file_url' => :'file_url',
        :'message' => :'message',
        :'subject' => :'subject',
        :'test_mode' => :'test_mode'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Returns attribute map of this model + parent
    def self.merged_attributes
      self.attribute_map
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'client_id' => :'String',
        :'file' => :'Array<File>',
        :'file_url' => :'Array<String>',
        :'message' => :'String',
        :'subject' => :'String',
        :'test_mode' => :'Boolean'
      }
    end

    # Attribute type mapping of this model + parent
    def self.merged_types
      self.openapi_types
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Returns list of attributes with nullable: true of this model + parent
    def self.merged_nullable
      self.openapi_nullable
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `HelloSign::TemplateUpdateFilesRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.merged_attributes.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `HelloSign::TemplateUpdateFilesRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'client_id')
        self.client_id = attributes[:'client_id']
      end

      if attributes.key?(:'file')
        if (value = attributes[:'file']).is_a?(Array)
          self.file = value
        end
      end

      if attributes.key?(:'file_url')
        if (value = attributes[:'file_url']).is_a?(Array)
          self.file_url = value
        end
      end

      if attributes.key?(:'message')
        self.message = attributes[:'message']
      end

      if attributes.key?(:'subject')
        self.subject = attributes[:'subject']
      end

      if attributes.key?(:'test_mode')
        self.test_mode = attributes[:'test_mode']
      else
        self.test_mode = false
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@message.nil? && @message.to_s.length > 5000
        invalid_properties.push('invalid value for "message", the character length must be smaller than or equal to 5000.')
      end

      if !@subject.nil? && @subject.to_s.length > 100
        invalid_properties.push('invalid value for "subject", the character length must be smaller than or equal to 100.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@message.nil? && @message.to_s.length > 5000
      return false if !@subject.nil? && @subject.to_s.length > 100
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] message Value to be assigned
    def message=(message)
      if !message.nil? && message.to_s.length > 5000
        fail ArgumentError, 'invalid value for "message", the character length must be smaller than or equal to 5000.'
      end

      @message = message
    end

    # Custom attribute writer method with validation
    # @param [Object] subject Value to be assigned
    def subject=(subject)
      if !subject.nil? && subject.to_s.length > 100
        fail ArgumentError, 'invalid value for "subject", the character length must be smaller than or equal to 100.'
      end

      @subject = subject
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          client_id == o.client_id &&
          file == o.file &&
          file_url == o.file_url &&
          message == o.message &&
          subject == o.subject &&
          test_mode == o.test_mode
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [client_id, file, file_url, message, subject, test_mode].hash
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
        if attributes[attribute_map[key]].nil? && self.class.merged_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
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
        if HelloSign.configure.instantiate_files && value.is_a?(String)
          filepath = value

          if HelloSign.configure.root_file_path
            filepath = "#{HelloSign.configure.root_file_path}/#{value}"
          end

          if File.exist? filepath
            value = File.new(filepath, "r")
          end
        end

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
        klass = HelloSign.const_get(type)
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
