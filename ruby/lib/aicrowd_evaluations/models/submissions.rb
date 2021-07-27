=begin
#AIcrowd Evaluations API

#API to create and evaluate custom challenges on AIcrowd!

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.21

=end

require 'date'

module AIcrowdEvaluations
  class Submissions
    # ID
    attr_accessor :id

    # Creation time
    attr_accessor :created

    # Last updation time
    attr_accessor :updated

    # Grader identifier
    attr_accessor :grader_id

    # URL to the submission code
    attr_accessor :submission_data

    # Current status of the submission
    attr_accessor :status

    # S3 link of the output (available after the evaluation)
    attr_accessor :output

    # Array of any additional outputs
    attr_accessor :additional_outputs

    # S3 link of the STDOUT of the evaluation
    attr_accessor :logs

    # Evaluation start time
    attr_accessor :started

    # Evaluation end time
    attr_accessor :ended

    # Additional meta data of the grader
    attr_accessor :meta

    # Name of the workflow used to evaluate submission
    attr_accessor :wf_name

    # Workflow priority to assign
    attr_accessor :workflow_priority

    # User ID
    attr_accessor :user_id

    # Organisation ID
    attr_accessor :organisation_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'created' => :'created',
        :'updated' => :'updated',
        :'grader_id' => :'grader_id',
        :'submission_data' => :'submission_data',
        :'status' => :'status',
        :'output' => :'output',
        :'additional_outputs' => :'additional_outputs',
        :'logs' => :'logs',
        :'started' => :'started',
        :'ended' => :'ended',
        :'meta' => :'meta',
        :'wf_name' => :'wf_name',
        :'workflow_priority' => :'workflow_priority',
        :'user_id' => :'user_id',
        :'organisation_id' => :'organisation_id'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'created' => :'DateTime',
        :'updated' => :'DateTime',
        :'grader_id' => :'Integer',
        :'submission_data' => :'Object',
        :'status' => :'String',
        :'output' => :'String',
        :'additional_outputs' => :'Object',
        :'logs' => :'String',
        :'started' => :'DateTime',
        :'ended' => :'DateTime',
        :'meta' => :'String',
        :'wf_name' => :'String',
        :'workflow_priority' => :'Integer',
        :'user_id' => :'Integer',
        :'organisation_id' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'created')
        self.created = attributes[:'created']
      end

      if attributes.has_key?(:'updated')
        self.updated = attributes[:'updated']
      end

      if attributes.has_key?(:'grader_id')
        self.grader_id = attributes[:'grader_id']
      end

      if attributes.has_key?(:'submission_data')
        self.submission_data = attributes[:'submission_data']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'output')
        self.output = attributes[:'output']
      end

      if attributes.has_key?(:'additional_outputs')
        self.additional_outputs = attributes[:'additional_outputs']
      end

      if attributes.has_key?(:'logs')
        self.logs = attributes[:'logs']
      end

      if attributes.has_key?(:'started')
        self.started = attributes[:'started']
      end

      if attributes.has_key?(:'ended')
        self.ended = attributes[:'ended']
      end

      if attributes.has_key?(:'meta')
        self.meta = attributes[:'meta']
      end

      if attributes.has_key?(:'wf_name')
        self.wf_name = attributes[:'wf_name']
      end

      if attributes.has_key?(:'workflow_priority')
        self.workflow_priority = attributes[:'workflow_priority']
      end

      if attributes.has_key?(:'user_id')
        self.user_id = attributes[:'user_id']
      end

      if attributes.has_key?(:'organisation_id')
        self.organisation_id = attributes[:'organisation_id']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @grader_id.nil?
        invalid_properties.push('invalid value for "grader_id", grader_id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @grader_id.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          created == o.created &&
          updated == o.updated &&
          grader_id == o.grader_id &&
          submission_data == o.submission_data &&
          status == o.status &&
          output == o.output &&
          additional_outputs == o.additional_outputs &&
          logs == o.logs &&
          started == o.started &&
          ended == o.ended &&
          meta == o.meta &&
          wf_name == o.wf_name &&
          workflow_priority == o.workflow_priority &&
          user_id == o.user_id &&
          organisation_id == o.organisation_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, created, updated, grader_id, submission_data, status, output, additional_outputs, logs, started, ended, meta, wf_name, workflow_priority, user_id, organisation_id].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
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
        temp_model = AIcrowdEvaluations.const_get(type).new
        temp_model.build_from_hash(value)
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
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end
end
