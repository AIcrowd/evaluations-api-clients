=begin
#AIcrowd Evaluations API

#API to create and evaluate custom challenges on AIcrowd!

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.13

=end

require 'uri'

module AIcrowdEvaluations
  class AuthApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Log in a user with email and password.
    # @param payload 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_fields An optional fields mask
    # @return [AuthResponse]
    def login(payload, opts = {})
      data, _status_code, _headers = login_with_http_info(payload, opts)
      data
    end

    # Log in a user with email and password.
    # @param payload 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_fields An optional fields mask
    # @return [Array<(AuthResponse, Fixnum, Hash)>] AuthResponse data, response status code and response headers
    def login_with_http_info(payload, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthApi.login ...'
      end
      # verify the required parameter 'payload' is set
      if @api_client.config.client_side_validation && payload.nil?
        fail ArgumentError, "Missing the required parameter 'payload' when calling AuthApi.login"
      end
      # resource path
      local_var_path = '/auth/login'

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AuthResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthApi#login\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Invalidate the current authorization token.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_fields An optional fields mask
    # @return [AuthLogout]
    def logout(opts = {})
      data, _status_code, _headers = logout_with_http_info(opts)
      data
    end

    # Invalidate the current authorization token.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_fields An optional fields mask
    # @return [Array<(AuthLogout, Fixnum, Hash)>] AuthLogout data, response status code and response headers
    def logout_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthApi.logout ...'
      end
      # resource path
      local_var_path = '/auth/logout'

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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AuthLogout')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthApi#logout\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
