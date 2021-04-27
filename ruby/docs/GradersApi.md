# AIcrowdEvaluations::GradersApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**archive_grader**](GradersApi.md#archive_grader) | **POST** /graders/{grader_id}/archive | 
[**create_grader**](GradersApi.md#create_grader) | **POST** /graders/ | 
[**delete_grader**](GradersApi.md#delete_grader) | **DELETE** /graders/{grader_id} | 
[**download_grader_logs**](GradersApi.md#download_grader_logs) | **GET** /graders/{grader_id}/logs/download | 
[**get_grader**](GradersApi.md#get_grader) | **GET** /graders/{grader_id} | 
[**get_grader_logs**](GradersApi.md#get_grader_logs) | **GET** /graders/{grader_id}/logs | 
[**list_graders**](GradersApi.md#list_graders) | **GET** /graders/ | 
[**unarchive_grader**](GradersApi.md#unarchive_grader) | **POST** /graders/{grader_id}/unarchive | 
[**update_grader**](GradersApi.md#update_grader) | **PATCH** /graders/{grader_id} | 


# **archive_grader**
> archive_grader(grader_id)



Archive a grader

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

api_instance = AIcrowdEvaluations::GradersApi.new

grader_id = 56 # Integer | 


begin
  api_instance.archive_grader(grader_id)
rescue AIcrowdEvaluations::ApiError => e
  puts "Exception when calling GradersApi->archive_grader: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grader_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_grader**
> Grader create_grader(payload, opts)



Create a new grader

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

api_instance = AIcrowdEvaluations::GradersApi.new

payload = AIcrowdEvaluations::Grader.new # Grader | 

opts = { 
  x_fields: 'x_fields_example' # String | An optional fields mask
}

begin
  result = api_instance.create_grader(payload, opts)
  p result
rescue AIcrowdEvaluations::ApiError => e
  puts "Exception when calling GradersApi->create_grader: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**Grader**](Grader.md)|  | 
 **x_fields** | **String**| An optional fields mask | [optional] 

### Return type

[**Grader**](Grader.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_grader**
> delete_grader(grader_id, )



Delete a grader by its ID

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

api_instance = AIcrowdEvaluations::GradersApi.new

grader_id = 56 # Integer | 


begin
  api_instance.delete_grader(grader_id, )
rescue AIcrowdEvaluations::ApiError => e
  puts "Exception when calling GradersApi->delete_grader: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grader_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **download_grader_logs**
> download_grader_logs(grader_id)



Get the grader logs by submission ID

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

api_instance = AIcrowdEvaluations::GradersApi.new

grader_id = 56 # Integer | 


begin
  api_instance.download_grader_logs(grader_id)
rescue AIcrowdEvaluations::ApiError => e
  puts "Exception when calling GradersApi->download_grader_logs: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grader_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_grader**
> Grader get_grader(grader_id, , opts)



Get details of a grader by its ID

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

api_instance = AIcrowdEvaluations::GradersApi.new

grader_id = 56 # Integer | 

opts = { 
  x_fields: 'x_fields_example' # String | An optional fields mask
}

begin
  result = api_instance.get_grader(grader_id, , opts)
  p result
rescue AIcrowdEvaluations::ApiError => e
  puts "Exception when calling GradersApi->get_grader: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grader_id** | **Integer**|  | 
 **x_fields** | **String**| An optional fields mask | [optional] 

### Return type

[**Grader**](Grader.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_grader_logs**
> get_grader_logs(grader_id, opts)



Get grader logs from loki

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

api_instance = AIcrowdEvaluations::GradersApi.new

grader_id = 56 # Integer | 

opts = { 
  step: 56, # Integer | Granularity of logs
  log_lines: 56 # Integer | Number of lines to fetch
}

begin
  api_instance.get_grader_logs(grader_id, opts)
rescue AIcrowdEvaluations::ApiError => e
  puts "Exception when calling GradersApi->get_grader_logs: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grader_id** | **Integer**|  | 
 **step** | **Integer**| Granularity of logs | [optional] 
 **log_lines** | **Integer**| Number of lines to fetch | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_graders**
> Array&lt;Grader&gt; list_graders(opts)



List all graders available

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

api_instance = AIcrowdEvaluations::GradersApi.new

opts = { 
  per_page: 'per_page_example', # String | Results to display per page
  page: 'page_example', # String | Page number
  meta: 'meta_example', # String | Fetch graders containing this meta value
  name: 'name_example', # String | Fetch grader containing name
  status: 'status_example', # String | Fetch graders with this status
  user_id: 56, # Integer | Fetch graders created by the user
  x_fields: 'x_fields_example' # String | An optional fields mask
}

begin
  result = api_instance.list_graders(opts)
  p result
rescue AIcrowdEvaluations::ApiError => e
  puts "Exception when calling GradersApi->list_graders: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **per_page** | **String**| Results to display per page | [optional] 
 **page** | **String**| Page number | [optional] 
 **meta** | **String**| Fetch graders containing this meta value | [optional] 
 **name** | **String**| Fetch grader containing name | [optional] 
 **status** | **String**| Fetch graders with this status | [optional] 
 **user_id** | **Integer**| Fetch graders created by the user | [optional] 
 **x_fields** | **String**| An optional fields mask | [optional] 

### Return type

[**Array&lt;Grader&gt;**](Grader.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **unarchive_grader**
> unarchive_grader(grader_id)



Unarchive a grader

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

api_instance = AIcrowdEvaluations::GradersApi.new

grader_id = 56 # Integer | 


begin
  api_instance.unarchive_grader(grader_id)
rescue AIcrowdEvaluations::ApiError => e
  puts "Exception when calling GradersApi->unarchive_grader: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grader_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_grader**
> Grader update_grader(grader_id, payload, opts)



Update meta details of a grader by its ID. Warning: There is no data validation.

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

api_instance = AIcrowdEvaluations::GradersApi.new

grader_id = 56 # Integer | 

payload = AIcrowdEvaluations::GraderMeta.new # GraderMeta | 

opts = { 
  x_fields: 'x_fields_example' # String | An optional fields mask
}

begin
  result = api_instance.update_grader(grader_id, payload, opts)
  p result
rescue AIcrowdEvaluations::ApiError => e
  puts "Exception when calling GradersApi->update_grader: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grader_id** | **Integer**|  | 
 **payload** | [**GraderMeta**](GraderMeta.md)|  | 
 **x_fields** | **String**| An optional fields mask | [optional] 

### Return type

[**Grader**](Grader.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



