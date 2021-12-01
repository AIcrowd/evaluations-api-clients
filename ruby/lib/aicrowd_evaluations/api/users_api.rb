=begin
#AIcrowd Evaluations API

#API to create and evaluate custom challenges on AIcrowd!

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.24

=end

require 'uri'

module AIcrowdEvaluations
  class UsersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a new user
    # @param payload 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_fields An optional fields mask
    # @return [User]
    def create_user(payload, opts = {})
      data, _status_code, _headers = create_user_with_http_info(payload, opts)
      data
    end

    # Create a new user
    # @param payload 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_fields An optional fields mask
    # @return [Array<(User, Fixnum, Hash)>] User data, response status code and response headers
    def create_user_with_http_info(payload, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.create_user ...'
      end
      # verify the required parameter 'payload' is set
      if @api_client.config.client_side_validation && payload.nil?
        fail ArgumentError, "Missing the required parameter 'payload' when calling UsersApi.create_user"
      end
      # resource path
      local_var_path = '/users/'

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
        :return_type => 'User')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#create_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete a user
    # @param user_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_user(user_id, opts = {})
      delete_user_with_http_info(user_id, opts)
      nil
    end

    # Delete a user
    # @param user_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_user_with_http_info(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.delete_user ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UsersApi.delete_user"
      end
      # resource path
      local_var_path = '/users/{user_id}'.sub('{' + 'user_id' + '}', user_id.to_s)

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
        @api_client.config.logger.debug "API called: UsersApi#delete_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get information of a user
    # @param user_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_fields An optional fields mask
    # @return [User]
    def get_user(user_id, opts = {})
      data, _status_code, _headers = get_user_with_http_info(user_id, opts)
      data
    end

    # Get information of a user
    # @param user_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_fields An optional fields mask
    # @return [Array<(User, Fixnum, Hash)>] User data, response status code and response headers
    def get_user_with_http_info(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.get_user ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UsersApi.get_user"
      end
      # resource path
      local_var_path = '/users/{user_id}'.sub('{' + 'user_id' + '}', user_id.to_s)

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
        :return_type => 'User')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#get_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get all user
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_fields An optional fields mask
    # @return [Array<User>]
    def list_users(opts = {})
      data, _status_code, _headers = list_users_with_http_info(opts)
      data
    end

    # Get all user
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_fields An optional fields mask
    # @return [Array<(Array<User>, Fixnum, Hash)>] Array<User> data, response status code and response headers
    def list_users_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.list_users ...'
      end
      # resource path
      local_var_path = '/users/'

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
        :return_type => 'Array<User>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#list_users\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update a user
    # @param user_id 
    # @param payload 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_fields An optional fields mask
    # @return [User]
    def update_user(user_id, payload, opts = {})
      data, _status_code, _headers = update_user_with_http_info(user_id, payload, opts)
      data
    end

    # Update a user
    # @param user_id 
    # @param payload 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_fields An optional fields mask
    # @return [Array<(User, Fixnum, Hash)>] User data, response status code and response headers
    def update_user_with_http_info(user_id, payload, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.update_user ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UsersApi.update_user"
      end
      # verify the required parameter 'payload' is set
      if @api_client.config.client_side_validation && payload.nil?
        fail ArgumentError, "Missing the required parameter 'payload' when calling UsersApi.update_user"
      end
      # resource path
      local_var_path = '/users/{user_id}'.sub('{' + 'user_id' + '}', user_id.to_s)

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
        :return_type => 'User')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#update_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Add or subtract quota for a user
    # @param user_id 
    # @param payload 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def update_user_quota(user_id, payload, opts = {})
      update_user_quota_with_http_info(user_id, payload, opts)
      nil
    end

    # Add or subtract quota for a user
    # @param user_id 
    # @param payload 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_user_quota_with_http_info(user_id, payload, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.update_user_quota ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UsersApi.update_user_quota"
      end
      # verify the required parameter 'payload' is set
      if @api_client.config.client_side_validation && payload.nil?
        fail ArgumentError, "Missing the required parameter 'payload' when calling UsersApi.update_user_quota"
      end
      # resource path
      local_var_path = '/users/{user_id}/addquota'.sub('{' + 'user_id' + '}', user_id.to_s)

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
      post_body = @api_client.object_to_http_body(payload)
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#update_user_quota\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
