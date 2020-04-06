=begin
#Evaluations API

#API to create and evaluate custom challenges

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.13

=end

require 'uri'

module AIcrowdEvaluations
  class GradersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete a grader
    # @param grader_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_grader_dao(grader_id, opts = {})
      delete_grader_dao_with_http_info(grader_id, opts)
      nil
    end

    # Delete a grader
    # @param grader_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_grader_dao_with_http_info(grader_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GradersApi.delete_grader_dao ...'
      end
      # verify the required parameter 'grader_id' is set
      if @api_client.config.client_side_validation && grader_id.nil?
        fail ArgumentError, "Missing the required parameter 'grader_id' when calling GradersApi.delete_grader_dao"
      end
      # resource path
      local_var_path = '/graders/{grader_id}'.sub('{' + 'grader_id' + '}', grader_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GradersApi#delete_grader_dao\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get information of a grader
    # @param grader_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_fields An optional fields mask
    # @return [Grader]
    def get_grader_dao(grader_id, opts = {})
      data, _status_code, _headers = get_grader_dao_with_http_info(grader_id, opts)
      data
    end

    # Get information of a grader
    # @param grader_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_fields An optional fields mask
    # @return [Array<(Grader, Fixnum, Hash)>] Grader data, response status code and response headers
    def get_grader_dao_with_http_info(grader_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GradersApi.get_grader_dao ...'
      end
      # verify the required parameter 'grader_id' is set
      if @api_client.config.client_side_validation && grader_id.nil?
        fail ArgumentError, "Missing the required parameter 'grader_id' when calling GradersApi.get_grader_dao"
      end
      # resource path
      local_var_path = '/graders/{grader_id}'.sub('{' + 'grader_id' + '}', grader_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'X-Fields'] = opts[:'x_fields'] if !opts[:'x_fields'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Grader')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GradersApi#get_grader_dao\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get all grader
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_fields An optional fields mask
    # @return [Array<Grader>]
    def get_grader_list_dao(opts = {})
      data, _status_code, _headers = get_grader_list_dao_with_http_info(opts)
      data
    end

    # Get all grader
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_fields An optional fields mask
    # @return [Array<(Array<Grader>, Fixnum, Hash)>] Array<Grader> data, response status code and response headers
    def get_grader_list_dao_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GradersApi.get_grader_list_dao ...'
      end
      # resource path
      local_var_path = '/graders/'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'X-Fields'] = opts[:'x_fields'] if !opts[:'x_fields'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<Grader>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GradersApi#get_grader_list_dao\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create a new grader
    # @param payload 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_fields An optional fields mask
    # @return [Grader]
    def post_grader_list_dao(payload, opts = {})
      data, _status_code, _headers = post_grader_list_dao_with_http_info(payload, opts)
      data
    end

    # Create a new grader
    # @param payload 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_fields An optional fields mask
    # @return [Array<(Grader, Fixnum, Hash)>] Grader data, response status code and response headers
    def post_grader_list_dao_with_http_info(payload, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GradersApi.post_grader_list_dao ...'
      end
      # verify the required parameter 'payload' is set
      if @api_client.config.client_side_validation && payload.nil?
        fail ArgumentError, "Missing the required parameter 'payload' when calling GradersApi.post_grader_list_dao"
      end
      # resource path
      local_var_path = '/graders/'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'X-Fields'] = opts[:'x_fields'] if !opts[:'x_fields'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(payload)
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Grader')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GradersApi#post_grader_list_dao\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update a grader
    # @param grader_id 
    # @param payload 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_fields An optional fields mask
    # @return [Grader]
    def put_grader_dao(grader_id, payload, opts = {})
      data, _status_code, _headers = put_grader_dao_with_http_info(grader_id, payload, opts)
      data
    end

    # Update a grader
    # @param grader_id 
    # @param payload 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_fields An optional fields mask
    # @return [Array<(Grader, Fixnum, Hash)>] Grader data, response status code and response headers
    def put_grader_dao_with_http_info(grader_id, payload, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GradersApi.put_grader_dao ...'
      end
      # verify the required parameter 'grader_id' is set
      if @api_client.config.client_side_validation && grader_id.nil?
        fail ArgumentError, "Missing the required parameter 'grader_id' when calling GradersApi.put_grader_dao"
      end
      # verify the required parameter 'payload' is set
      if @api_client.config.client_side_validation && payload.nil?
        fail ArgumentError, "Missing the required parameter 'payload' when calling GradersApi.put_grader_dao"
      end
      # resource path
      local_var_path = '/graders/{grader_id}'.sub('{' + 'grader_id' + '}', grader_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'X-Fields'] = opts[:'x_fields'] if !opts[:'x_fields'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(payload)
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Grader')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GradersApi#put_grader_dao\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
