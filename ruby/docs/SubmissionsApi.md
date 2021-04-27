# AIcrowdEvaluations::SubmissionsApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_submission**](SubmissionsApi.md#create_submission) | **POST** /submissions/ | 
[**delete_submission**](SubmissionsApi.md#delete_submission) | **DELETE** /submissions/{submission_id} | 
[**download_submission_logs**](SubmissionsApi.md#download_submission_logs) | **GET** /submissions/{submission_id}/logs/download | 
[**get_submission**](SubmissionsApi.md#get_submission) | **GET** /submissions/{submission_id} | 
[**get_submission_data**](SubmissionsApi.md#get_submission_data) | **GET** /submissions/{submission_id}/data | 
[**get_submission_logs**](SubmissionsApi.md#get_submission_logs) | **GET** /submissions/{submission_id}/logs | 
[**list_submissions**](SubmissionsApi.md#list_submissions) | **GET** /submissions/ | 
[**retry_submissions**](SubmissionsApi.md#retry_submissions) | **POST** /submissions/retry | 


# **create_submission**
> Submissions create_submission(payload, opts)



Make a new submission

### Example
```ruby
# load the gem
require 'aicrowd_evaluations'
# setup authorization
AIcrowdEvaluations.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['AUTHORIZATION'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['AUTHORIZATION'] = 'Bearer'
end

api_instance = AIcrowdEvaluations::SubmissionsApi.new

payload = AIcrowdEvaluations::Submissions.new # Submissions | 

opts = { 
  x_fields: 'x_fields_example' # String | An optional fields mask
}

begin
  result = api_instance.create_submission(payload, opts)
  p result
rescue AIcrowdEvaluations::ApiError => e
  puts "Exception when calling SubmissionsApi->create_submission: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**Submissions**](Submissions.md)|  | 
 **x_fields** | **String**| An optional fields mask | [optional] 

### Return type

[**Submissions**](Submissions.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_submission**
> delete_submission(submission_id)



Stop evaluation of a submission and delete it

### Example
```ruby
# load the gem
require 'aicrowd_evaluations'
# setup authorization
AIcrowdEvaluations.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['AUTHORIZATION'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['AUTHORIZATION'] = 'Bearer'
end

api_instance = AIcrowdEvaluations::SubmissionsApi.new

submission_id = 56 # Integer | 


begin
  api_instance.delete_submission(submission_id)
rescue AIcrowdEvaluations::ApiError => e
  puts "Exception when calling SubmissionsApi->delete_submission: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submission_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **download_submission_logs**
> download_submission_logs(submission_id)



Get the submission logs by submission ID

### Example
```ruby
# load the gem
require 'aicrowd_evaluations'
# setup authorization
AIcrowdEvaluations.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['AUTHORIZATION'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['AUTHORIZATION'] = 'Bearer'
end

api_instance = AIcrowdEvaluations::SubmissionsApi.new

submission_id = 56 # Integer | 


begin
  api_instance.download_submission_logs(submission_id)
rescue AIcrowdEvaluations::ApiError => e
  puts "Exception when calling SubmissionsApi->download_submission_logs: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submission_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_submission**
> Submissions get_submission(submission_id, opts)



Get details of a submission by its ID

### Example
```ruby
# load the gem
require 'aicrowd_evaluations'
# setup authorization
AIcrowdEvaluations.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['AUTHORIZATION'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['AUTHORIZATION'] = 'Bearer'
end

api_instance = AIcrowdEvaluations::SubmissionsApi.new

submission_id = 56 # Integer | 

opts = { 
  x_fields: 'x_fields_example' # String | An optional fields mask
}

begin
  result = api_instance.get_submission(submission_id, opts)
  p result
rescue AIcrowdEvaluations::ApiError => e
  puts "Exception when calling SubmissionsApi->get_submission: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submission_id** | **Integer**|  | 
 **x_fields** | **String**| An optional fields mask | [optional] 

### Return type

[**Submissions**](Submissions.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_submission_data**
> get_submission_data(submission_id)



Get the submission data by submission ID

### Example
```ruby
# load the gem
require 'aicrowd_evaluations'
# setup authorization
AIcrowdEvaluations.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['AUTHORIZATION'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['AUTHORIZATION'] = 'Bearer'
end

api_instance = AIcrowdEvaluations::SubmissionsApi.new

submission_id = 56 # Integer | 


begin
  api_instance.get_submission_data(submission_id)
rescue AIcrowdEvaluations::ApiError => e
  puts "Exception when calling SubmissionsApi->get_submission_data: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submission_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_submission_logs**
> get_submission_logs(submission_id, opts)



Get submission logs from loki

### Example
```ruby
# load the gem
require 'aicrowd_evaluations'
# setup authorization
AIcrowdEvaluations.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['AUTHORIZATION'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['AUTHORIZATION'] = 'Bearer'
end

api_instance = AIcrowdEvaluations::SubmissionsApi.new

submission_id = 56 # Integer | 

opts = { 
  step: 56, # Integer | Granularity of logs
  log_lines: 56 # Integer | Number of lines to fetch
}

begin
  api_instance.get_submission_logs(submission_id, opts)
rescue AIcrowdEvaluations::ApiError => e
  puts "Exception when calling SubmissionsApi->get_submission_logs: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submission_id** | **Integer**|  | 
 **step** | **Integer**| Granularity of logs | [optional] 
 **log_lines** | **Integer**| Number of lines to fetch | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_submissions**
> Array&lt;Submissions&gt; list_submissions(opts)



List all submissions available

### Example
```ruby
# load the gem
require 'aicrowd_evaluations'
# setup authorization
AIcrowdEvaluations.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['AUTHORIZATION'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['AUTHORIZATION'] = 'Bearer'
end

api_instance = AIcrowdEvaluations::SubmissionsApi.new

opts = { 
  per_page: 'per_page_example', # String | Results to display per page
  page: 'page_example', # String | Page number
  meta: 'meta_example', # String | Fetch submissions containing this meta value
  status: 'status_example', # String | Fetch submissions with this status
  grader_id: 56, # Integer | Fetch submissions for a grader
  user_id: 56, # Integer | Fetch submissions created by the user
  x_fields: 'x_fields_example' # String | An optional fields mask
}

begin
  result = api_instance.list_submissions(opts)
  p result
rescue AIcrowdEvaluations::ApiError => e
  puts "Exception when calling SubmissionsApi->list_submissions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **per_page** | **String**| Results to display per page | [optional] 
 **page** | **String**| Page number | [optional] 
 **meta** | **String**| Fetch submissions containing this meta value | [optional] 
 **status** | **String**| Fetch submissions with this status | [optional] 
 **grader_id** | **Integer**| Fetch submissions for a grader | [optional] 
 **user_id** | **Integer**| Fetch submissions created by the user | [optional] 
 **x_fields** | **String**| An optional fields mask | [optional] 

### Return type

[**Array&lt;Submissions&gt;**](Submissions.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **retry_submissions**
> SubmissionRetry retry_submissions(payload, opts)



Retry the submissions with given IDs

### Example
```ruby
# load the gem
require 'aicrowd_evaluations'
# setup authorization
AIcrowdEvaluations.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['AUTHORIZATION'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['AUTHORIZATION'] = 'Bearer'
end

api_instance = AIcrowdEvaluations::SubmissionsApi.new

payload = AIcrowdEvaluations::SubmissionRetryInput.new # SubmissionRetryInput | 

opts = { 
  x_fields: 'x_fields_example' # String | An optional fields mask
}

begin
  result = api_instance.retry_submissions(payload, opts)
  p result
rescue AIcrowdEvaluations::ApiError => e
  puts "Exception when calling SubmissionsApi->retry_submissions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**SubmissionRetryInput**](SubmissionRetryInput.md)|  | 
 **x_fields** | **String**| An optional fields mask | [optional] 

### Return type

[**SubmissionRetry**](SubmissionRetry.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



