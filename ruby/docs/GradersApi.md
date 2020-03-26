# AIcrowdEvaluations::GradersApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_grader_dao**](GradersApi.md#delete_grader_dao) | **DELETE** /graders/{grader_id} | 
[**get_grader_dao**](GradersApi.md#get_grader_dao) | **GET** /graders/{grader_id} | 
[**get_grader_list_dao**](GradersApi.md#get_grader_list_dao) | **GET** /graders/ | 
[**post_grader_list_dao**](GradersApi.md#post_grader_list_dao) | **POST** /graders/ | 
[**put_grader_dao**](GradersApi.md#put_grader_dao) | **PUT** /graders/{grader_id} | 


# **delete_grader_dao**
> delete_grader_dao(grader_id)



Delete a grader

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
  api_instance.delete_grader_dao(grader_id)
rescue AIcrowdEvaluations::ApiError => e
  puts "Exception when calling GradersApi->delete_grader_dao: #{e}"
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



# **get_grader_dao**
> Grader get_grader_dao(grader_id, opts)



Get information of a grader

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
  result = api_instance.get_grader_dao(grader_id, opts)
  p result
rescue AIcrowdEvaluations::ApiError => e
  puts "Exception when calling GradersApi->get_grader_dao: #{e}"
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



# **get_grader_list_dao**
> Array&lt;Grader&gt; get_grader_list_dao(opts)



Get all grader

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
  x_fields: 'x_fields_example' # String | An optional fields mask
}

begin
  result = api_instance.get_grader_list_dao(opts)
  p result
rescue AIcrowdEvaluations::ApiError => e
  puts "Exception when calling GradersApi->get_grader_list_dao: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_fields** | **String**| An optional fields mask | [optional] 

### Return type

[**Array&lt;Grader&gt;**](Grader.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_grader_list_dao**
> Grader post_grader_list_dao(payload, opts)



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
  result = api_instance.post_grader_list_dao(payload, opts)
  p result
rescue AIcrowdEvaluations::ApiError => e
  puts "Exception when calling GradersApi->post_grader_list_dao: #{e}"
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



# **put_grader_dao**
> Grader put_grader_dao(grader_idpayload, opts)



Update a grader

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

payload = AIcrowdEvaluations::Grader.new # Grader | 

opts = { 
  x_fields: 'x_fields_example' # String | An optional fields mask
}

begin
  result = api_instance.put_grader_dao(grader_idpayload, opts)
  p result
rescue AIcrowdEvaluations::ApiError => e
  puts "Exception when calling GradersApi->put_grader_dao: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grader_id** | **Integer**|  | 
 **payload** | [**Grader**](Grader.md)|  | 
 **x_fields** | **String**| An optional fields mask | [optional] 

### Return type

[**Grader**](Grader.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



