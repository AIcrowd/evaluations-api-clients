# SwaggerClient::ArgoApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**post_generic_feedback_contract**](ArgoApi.md#post_generic_feedback_contract) | **POST** /argo/{model_name}/{object_id} | 
[**post_grader_feedback_dao**](ArgoApi.md#post_grader_feedback_dao) | **POST** /argo/graders/{grader_id} | 
[**post_submission_feedback_dao**](ArgoApi.md#post_submission_feedback_dao) | **POST** /argo/submissions/{submission_id} | 


# **post_generic_feedback_contract**
> post_generic_feedback_contract(model_name, object_id, payload)



Update the status of an object

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['AUTHORIZATION'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['AUTHORIZATION'] = 'Bearer'
end

api_instance = SwaggerClient::ArgoApi.new

model_name = 'model_name_example' # String | 

object_id = 56 # Integer | 

payload = SwaggerClient::GenericFeedback.new # GenericFeedback | 


begin
  api_instance.post_generic_feedback_contract(model_name, object_id, payload)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ArgoApi->post_generic_feedback_contract: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model_name** | **String**|  | 
 **object_id** | **Integer**|  | 
 **payload** | [**GenericFeedback**](GenericFeedback.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_grader_feedback_dao**
> post_grader_feedback_dao(grader_id, payload)



Update the grader details

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['AUTHORIZATION'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['AUTHORIZATION'] = 'Bearer'
end

api_instance = SwaggerClient::ArgoApi.new

grader_id = 56 # Integer | 

payload = SwaggerClient::GraderFeedback.new # GraderFeedback | 


begin
  api_instance.post_grader_feedback_dao(grader_id, payload)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ArgoApi->post_grader_feedback_dao: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grader_id** | **Integer**|  | 
 **payload** | [**GraderFeedback**](GraderFeedback.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_submission_feedback_dao**
> post_submission_feedback_dao(submission_id, payload)



Update the submission details

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['AUTHORIZATION'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['AUTHORIZATION'] = 'Bearer'
end

api_instance = SwaggerClient::ArgoApi.new

submission_id = 56 # Integer | 

payload = SwaggerClient::SubmissionFeedback.new # SubmissionFeedback | 


begin
  api_instance.post_submission_feedback_dao(submission_id, payload)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ArgoApi->post_submission_feedback_dao: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submission_id** | **Integer**|  | 
 **payload** | [**SubmissionFeedback**](SubmissionFeedback.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



