=begin
#AIcrowd Evaluations API

#API to create and evaluate custom challenges on AIcrowd!

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.24

=end

require 'uri'

module AIcrowdEvaluations
  class SubmissionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Make a new submission
    # @param payload 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_fields An optional fields mask
    # @return [Submissions]
    def create_submission(payload, opts = {})
      data, _status_code, _headers = create_submission_with_http_info(payload, opts)
      data
    end

    # Make a new submission
    # @param payload 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_fields An optional fields mask
    # @return [Array<(Submissions, Fixnum, Hash)>] Submissions data, response status code and response headers
    def create_submission_with_http_info(payload, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SubmissionsApi.create_submission ...'
      end
      # verify the required parameter 'payload' is set
      if @api_client.config.client_side_validation && payload.nil?
        fail ArgumentError, "Missing the required parameter 'payload' when calling SubmissionsApi.create_submission"
      end
      # resource path
      local_var_path = '/submissions/'

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
        :return_type => 'Submissions')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubmissionsApi#create_submission\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Stop evaluation of a submission and delete it
    # @param submission_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_submission(submission_id, opts = {})
      delete_submission_with_http_info(submission_id, opts)
      nil
    end

    # Stop evaluation of a submission and delete it
    # @param submission_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_submission_with_http_info(submission_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SubmissionsApi.delete_submission ...'
      end
      # verify the required parameter 'submission_id' is set
      if @api_client.config.client_side_validation && submission_id.nil?
        fail ArgumentError, "Missing the required parameter 'submission_id' when calling SubmissionsApi.delete_submission"
      end
      # resource path
      local_var_path = '/submissions/{submission_id}'.sub('{' + 'submission_id' + '}', submission_id.to_s)

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
        @api_client.config.logger.debug "API called: SubmissionsApi#delete_submission\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get the submission logs by submission ID
    # @param submission_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def download_submission_logs(submission_id, opts = {})
      download_submission_logs_with_http_info(submission_id, opts)
      nil
    end

    # Get the submission logs by submission ID
    # @param submission_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def download_submission_logs_with_http_info(submission_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SubmissionsApi.download_submission_logs ...'
      end
      # verify the required parameter 'submission_id' is set
      if @api_client.config.client_side_validation && submission_id.nil?
        fail ArgumentError, "Missing the required parameter 'submission_id' when calling SubmissionsApi.download_submission_logs"
      end
      # resource path
      local_var_path = '/submissions/{submission_id}/logs/download'.sub('{' + 'submission_id' + '}', submission_id.to_s)

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
        @api_client.config.logger.debug "API called: SubmissionsApi#download_submission_logs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get details of a submission by its ID
    # @param submission_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_fields An optional fields mask
    # @return [Submissions]
    def get_submission(submission_id, opts = {})
      data, _status_code, _headers = get_submission_with_http_info(submission_id, opts)
      data
    end

    # Get details of a submission by its ID
    # @param submission_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_fields An optional fields mask
    # @return [Array<(Submissions, Fixnum, Hash)>] Submissions data, response status code and response headers
    def get_submission_with_http_info(submission_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SubmissionsApi.get_submission ...'
      end
      # verify the required parameter 'submission_id' is set
      if @api_client.config.client_side_validation && submission_id.nil?
        fail ArgumentError, "Missing the required parameter 'submission_id' when calling SubmissionsApi.get_submission"
      end
      # resource path
      local_var_path = '/submissions/{submission_id}'.sub('{' + 'submission_id' + '}', submission_id.to_s)

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
        :return_type => 'Submissions')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubmissionsApi#get_submission\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get the submission data by submission ID
    # @param submission_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def get_submission_data(submission_id, opts = {})
      get_submission_data_with_http_info(submission_id, opts)
      nil
    end

    # Get the submission data by submission ID
    # @param submission_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def get_submission_data_with_http_info(submission_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SubmissionsApi.get_submission_data ...'
      end
      # verify the required parameter 'submission_id' is set
      if @api_client.config.client_side_validation && submission_id.nil?
        fail ArgumentError, "Missing the required parameter 'submission_id' when calling SubmissionsApi.get_submission_data"
      end
      # resource path
      local_var_path = '/submissions/{submission_id}/data'.sub('{' + 'submission_id' + '}', submission_id.to_s)

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
        @api_client.config.logger.debug "API called: SubmissionsApi#get_submission_data\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get submission logs from loki
    # @param submission_id 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :step Granularity of logs
    # @option opts [Integer] :log_lines Number of lines to fetch
    # @option opts [String] :x_fields An optional fields mask
    # @return [SubmissionLogs]
    def get_submission_logs(submission_id, opts = {})
      data, _status_code, _headers = get_submission_logs_with_http_info(submission_id, opts)
      data
    end

    # Get submission logs from loki
    # @param submission_id 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :step Granularity of logs
    # @option opts [Integer] :log_lines Number of lines to fetch
    # @option opts [String] :x_fields An optional fields mask
    # @return [Array<(SubmissionLogs, Fixnum, Hash)>] SubmissionLogs data, response status code and response headers
    def get_submission_logs_with_http_info(submission_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SubmissionsApi.get_submission_logs ...'
      end
      # verify the required parameter 'submission_id' is set
      if @api_client.config.client_side_validation && submission_id.nil?
        fail ArgumentError, "Missing the required parameter 'submission_id' when calling SubmissionsApi.get_submission_logs"
      end
      # resource path
      local_var_path = '/submissions/{submission_id}/logs'.sub('{' + 'submission_id' + '}', submission_id.to_s)

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
        :return_type => 'SubmissionLogs')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubmissionsApi#get_submission_logs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List all submissions available
    # @param [Hash] opts the optional parameters
    # @option opts [String] :per_page Results to display per page
    # @option opts [String] :page Page number
    # @option opts [String] :meta Fetch submissions containing this meta value
    # @option opts [String] :status Fetch submissions with this status
    # @option opts [Integer] :grader_id Fetch submissions for a grader
    # @option opts [Integer] :user_id Fetch submissions created by the user
    # @option opts [String] :x_fields An optional fields mask
    # @return [Array<Submissions>]
    def list_submissions(opts = {})
      data, _status_code, _headers = list_submissions_with_http_info(opts)
      data
    end

    # List all submissions available
    # @param [Hash] opts the optional parameters
    # @option opts [String] :per_page Results to display per page
    # @option opts [String] :page Page number
    # @option opts [String] :meta Fetch submissions containing this meta value
    # @option opts [String] :status Fetch submissions with this status
    # @option opts [Integer] :grader_id Fetch submissions for a grader
    # @option opts [Integer] :user_id Fetch submissions created by the user
    # @option opts [String] :x_fields An optional fields mask
    # @return [Array<(Array<Submissions>, Fixnum, Hash)>] Array<Submissions> data, response status code and response headers
    def list_submissions_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SubmissionsApi.list_submissions ...'
      end
      # resource path
      local_var_path = '/submissions/'

      # query parameters
      query_params = {}
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'meta'] = opts[:'meta'] if !opts[:'meta'].nil?
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?
      query_params[:'grader_id'] = opts[:'grader_id'] if !opts[:'grader_id'].nil?
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
        :return_type => 'Array<Submissions>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubmissionsApi#list_submissions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retry the submissions with given IDs
    # @param payload 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_fields An optional fields mask
    # @return [SubmissionRetry]
    def retry_submissions(payload, opts = {})
      data, _status_code, _headers = retry_submissions_with_http_info(payload, opts)
      data
    end

    # Retry the submissions with given IDs
    # @param payload 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_fields An optional fields mask
    # @return [Array<(SubmissionRetry, Fixnum, Hash)>] SubmissionRetry data, response status code and response headers
    def retry_submissions_with_http_info(payload, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SubmissionsApi.retry_submissions ...'
      end
      # verify the required parameter 'payload' is set
      if @api_client.config.client_side_validation && payload.nil?
        fail ArgumentError, "Missing the required parameter 'payload' when calling SubmissionsApi.retry_submissions"
      end
      # resource path
      local_var_path = '/submissions/retry'

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
        :return_type => 'SubmissionRetry')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubmissionsApi#retry_submissions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
