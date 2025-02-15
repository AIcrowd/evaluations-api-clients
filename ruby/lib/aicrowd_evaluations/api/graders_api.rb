=begin
#AIcrowd Evaluations API

#API to create and evaluate custom challenges on AIcrowd!

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.27

=end

require 'uri'

module AIcrowdEvaluations
  class GradersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Archive a grader
    # @param grader_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def archive_grader(grader_id, opts = {})
      archive_grader_with_http_info(grader_id, opts)
      nil
    end

    # Archive a grader
    # @param grader_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def archive_grader_with_http_info(grader_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GradersApi.archive_grader ...'
      end
      # verify the required parameter 'grader_id' is set
      if @api_client.config.client_side_validation && grader_id.nil?
        fail ArgumentError, "Missing the required parameter 'grader_id' when calling GradersApi.archive_grader"
      end
      # resource path
      local_var_path = '/graders/{grader_id}/archive'.sub('{' + 'grader_id' + '}', grader_id.to_s)

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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GradersApi#archive_grader\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create a new grader
    # @param payload 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_fields An optional fields mask
    # @return [Grader]
    def create_grader(payload, opts = {})
      data, _status_code, _headers = create_grader_with_http_info(payload, opts)
      data
    end

    # Create a new grader
    # @param payload 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_fields An optional fields mask
    # @return [Array<(Grader, Fixnum, Hash)>] Grader data, response status code and response headers
    def create_grader_with_http_info(payload, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GradersApi.create_grader ...'
      end
      # verify the required parameter 'payload' is set
      if @api_client.config.client_side_validation && payload.nil?
        fail ArgumentError, "Missing the required parameter 'payload' when calling GradersApi.create_grader"
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
        @api_client.config.logger.debug "API called: GradersApi#create_grader\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete a grader by its ID
    # @param grader_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_grader(grader_id, opts = {})
      delete_grader_with_http_info(grader_id, opts)
      nil
    end

    # Delete a grader by its ID
    # @param grader_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_grader_with_http_info(grader_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GradersApi.delete_grader ...'
      end
      # verify the required parameter 'grader_id' is set
      if @api_client.config.client_side_validation && grader_id.nil?
        fail ArgumentError, "Missing the required parameter 'grader_id' when calling GradersApi.delete_grader"
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
        @api_client.config.logger.debug "API called: GradersApi#delete_grader\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get the grader logs by submission ID
    # @param grader_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def download_grader_logs(grader_id, opts = {})
      download_grader_logs_with_http_info(grader_id, opts)
      nil
    end

    # Get the grader logs by submission ID
    # @param grader_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def download_grader_logs_with_http_info(grader_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GradersApi.download_grader_logs ...'
      end
      # verify the required parameter 'grader_id' is set
      if @api_client.config.client_side_validation && grader_id.nil?
        fail ArgumentError, "Missing the required parameter 'grader_id' when calling GradersApi.download_grader_logs"
      end
      # resource path
      local_var_path = '/graders/{grader_id}/logs/download'.sub('{' + 'grader_id' + '}', grader_id.to_s)

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
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GradersApi#download_grader_logs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get details of a grader by its ID
    # @param grader_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_fields An optional fields mask
    # @return [Grader]
    def get_grader(grader_id, opts = {})
      data, _status_code, _headers = get_grader_with_http_info(grader_id, opts)
      data
    end

    # Get details of a grader by its ID
    # @param grader_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_fields An optional fields mask
    # @return [Array<(Grader, Fixnum, Hash)>] Grader data, response status code and response headers
    def get_grader_with_http_info(grader_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GradersApi.get_grader ...'
      end
      # verify the required parameter 'grader_id' is set
      if @api_client.config.client_side_validation && grader_id.nil?
        fail ArgumentError, "Missing the required parameter 'grader_id' when calling GradersApi.get_grader"
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
        @api_client.config.logger.debug "API called: GradersApi#get_grader\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get grader logs from loki
    # @param grader_id 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :step Granularity of logs
    # @option opts [Integer] :log_lines Number of lines to fetch
    # @option opts [String] :x_fields An optional fields mask
    # @return [GraderLogs]
    def get_grader_logs(grader_id, opts = {})
      data, _status_code, _headers = get_grader_logs_with_http_info(grader_id, opts)
      data
    end

    # Get grader logs from loki
    # @param grader_id 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :step Granularity of logs
    # @option opts [Integer] :log_lines Number of lines to fetch
    # @option opts [String] :x_fields An optional fields mask
    # @return [Array<(GraderLogs, Fixnum, Hash)>] GraderLogs data, response status code and response headers
    def get_grader_logs_with_http_info(grader_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GradersApi.get_grader_logs ...'
      end
      # verify the required parameter 'grader_id' is set
      if @api_client.config.client_side_validation && grader_id.nil?
        fail ArgumentError, "Missing the required parameter 'grader_id' when calling GradersApi.get_grader_logs"
      end
      # resource path
      local_var_path = '/graders/{grader_id}/logs'.sub('{' + 'grader_id' + '}', grader_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'step'] = opts[:'step'] if !opts[:'step'].nil?
      query_params[:'log_lines'] = opts[:'log_lines'] if !opts[:'log_lines'].nil?

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
        :return_type => 'GraderLogs')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GradersApi#get_grader_logs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List all graders available
    # @param [Hash] opts the optional parameters
    # @option opts [String] :per_page Results to display per page
    # @option opts [String] :page Page number
    # @option opts [String] :meta Fetch graders containing this meta value
    # @option opts [String] :name Fetch grader containing name
    # @option opts [String] :status Fetch graders with this status
    # @option opts [Integer] :user_id Fetch graders created by the user
    # @option opts [String] :x_fields An optional fields mask
    # @return [Array<Grader>]
    def list_graders(opts = {})
      data, _status_code, _headers = list_graders_with_http_info(opts)
      data
    end

    # List all graders available
    # @param [Hash] opts the optional parameters
    # @option opts [String] :per_page Results to display per page
    # @option opts [String] :page Page number
    # @option opts [String] :meta Fetch graders containing this meta value
    # @option opts [String] :name Fetch grader containing name
    # @option opts [String] :status Fetch graders with this status
    # @option opts [Integer] :user_id Fetch graders created by the user
    # @option opts [String] :x_fields An optional fields mask
    # @return [Array<(Array<Grader>, Fixnum, Hash)>] Array<Grader> data, response status code and response headers
    def list_graders_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GradersApi.list_graders ...'
      end
      # resource path
      local_var_path = '/graders/'

      # query parameters
      query_params = {}
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'meta'] = opts[:'meta'] if !opts[:'meta'].nil?
      query_params[:'name'] = opts[:'name'] if !opts[:'name'].nil?
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?
      query_params[:'user_id'] = opts[:'user_id'] if !opts[:'user_id'].nil?

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
        @api_client.config.logger.debug "API called: GradersApi#list_graders\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Unarchive a grader
    # @param grader_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def unarchive_grader(grader_id, opts = {})
      unarchive_grader_with_http_info(grader_id, opts)
      nil
    end

    # Unarchive a grader
    # @param grader_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def unarchive_grader_with_http_info(grader_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GradersApi.unarchive_grader ...'
      end
      # verify the required parameter 'grader_id' is set
      if @api_client.config.client_side_validation && grader_id.nil?
        fail ArgumentError, "Missing the required parameter 'grader_id' when calling GradersApi.unarchive_grader"
      end
      # resource path
      local_var_path = '/graders/{grader_id}/unarchive'.sub('{' + 'grader_id' + '}', grader_id.to_s)

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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GradersApi#unarchive_grader\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update meta details of a grader by its ID. Warning: There is no data validation.
    # @param grader_id 
    # @param payload 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_fields An optional fields mask
    # @return [Grader]
    def update_grader(grader_id, payload, opts = {})
      data, _status_code, _headers = update_grader_with_http_info(grader_id, payload, opts)
      data
    end

    # Update meta details of a grader by its ID. Warning: There is no data validation.
    # @param grader_id 
    # @param payload 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_fields An optional fields mask
    # @return [Array<(Grader, Fixnum, Hash)>] Grader data, response status code and response headers
    def update_grader_with_http_info(grader_id, payload, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GradersApi.update_grader ...'
      end
      # verify the required parameter 'grader_id' is set
      if @api_client.config.client_side_validation && grader_id.nil?
        fail ArgumentError, "Missing the required parameter 'grader_id' when calling GradersApi.update_grader"
      end
      # verify the required parameter 'payload' is set
      if @api_client.config.client_side_validation && payload.nil?
        fail ArgumentError, "Missing the required parameter 'payload' when calling GradersApi.update_grader"
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
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Grader')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GradersApi#update_grader\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
