# AIcrowdEvaluations::SubmissionsApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_submission_dao**](SubmissionsApi.md#delete_submission_dao) | **DELETE** /submissions/{submission_id} | 
[**get_submission_dao**](SubmissionsApi.md#get_submission_dao) | **GET** /submissions/{submission_id} | 
[**get_submission_data_dao**](SubmissionsApi.md#get_submission_data_dao) | **GET** /submissions/{submission_id}/data | 
[**get_submission_list_dao**](SubmissionsApi.md#get_submission_list_dao) | **GET** /submissions/ | 
[**post_submission_list_dao**](SubmissionsApi.md#post_submission_list_dao) | **POST** /submissions/ | 


# **delete_submission_dao**
> delete_submission_dao(submission_id)



Stop evaluation of a submission

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
  api_instance.delete_submission_dao(submission_id)
rescue AIcrowdEvaluations::ApiError => e
  puts "Exception when calling SubmissionsApi->delete_submission_dao: #{e}"
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



# **get_submission_dao**
> Submissions get_submission_dao(submission_id, opts)



Get details of a submission

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
  result = api_instance.get_submission_dao(submission_id, opts)
  p result
rescue AIcrowdEvaluations::ApiError => e
  puts "Exception when calling SubmissionsApi->get_submission_dao: #{e}"
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



# **get_submission_data_dao**
> get_submission_data_dao(submission_id)



Get the submission data

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
  api_instance.get_submission_data_dao(submission_id)
rescue AIcrowdEvaluations::ApiError => e
  puts "Exception when calling SubmissionsApi->get_submission_data_dao: #{e}"
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



# **get_submission_list_dao**
> Array&lt;Submissions&gt; get_submission_list_dao(opts)



Get all submissions

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
  x_fields: 'x_fields_example' # String | An optional fields mask
}

begin
  result = api_instance.get_submission_list_dao(opts)
  p result
rescue AIcrowdEvaluations::ApiError => e
  puts "Exception when calling SubmissionsApi->get_submission_list_dao: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_fields** | **String**| An optional fields mask | [optional] 

### Return type

[**Array&lt;Submissions&gt;**](Submissions.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_submission_list_dao**
> Submissions post_submission_list_dao(payload, opts)



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
  result = api_instance.post_submission_list_dao(payload, opts)
  p result
rescue AIcrowdEvaluations::ApiError => e
  puts "Exception when calling SubmissionsApi->post_submission_list_dao: #{e}"
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



