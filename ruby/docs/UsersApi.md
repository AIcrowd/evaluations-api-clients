# SwaggerClient::UsersApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_user_dao**](UsersApi.md#delete_user_dao) | **DELETE** /users/{user_id} | 
[**get_user_dao**](UsersApi.md#get_user_dao) | **GET** /users/{user_id} | 
[**get_user_list_dao**](UsersApi.md#get_user_list_dao) | **GET** /users/ | 
[**post_user_list_dao**](UsersApi.md#post_user_list_dao) | **POST** /users/ | 
[**put_quota_dao**](UsersApi.md#put_quota_dao) | **PUT** /users/addquota/{user_id} | 
[**put_user_dao**](UsersApi.md#put_user_dao) | **PUT** /users/{user_id} | 


# **delete_user_dao**
> delete_user_dao(user_id)



Delete a user

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

api_instance = SwaggerClient::UsersApi.new

user_id = 56 # Integer | User identifier


begin
  api_instance.delete_user_dao(user_id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersApi->delete_user_dao: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| User identifier | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_user_dao**
> User get_user_dao(user_id, opts)



Get information of a user

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

api_instance = SwaggerClient::UsersApi.new

user_id = 56 # Integer | User identifier

opts = { 
  x_fields: 'x_fields_example' # String | An optional fields mask
}

begin
  result = api_instance.get_user_dao(user_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersApi->get_user_dao: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| User identifier | 
 **x_fields** | **String**| An optional fields mask | [optional] 

### Return type

[**User**](User.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_user_list_dao**
> Array&lt;User&gt; get_user_list_dao(opts)



Get all user

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

api_instance = SwaggerClient::UsersApi.new

opts = { 
  x_fields: 'x_fields_example' # String | An optional fields mask
}

begin
  result = api_instance.get_user_list_dao(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersApi->get_user_list_dao: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_fields** | **String**| An optional fields mask | [optional] 

### Return type

[**Array&lt;User&gt;**](User.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_user_list_dao**
> User post_user_list_dao(payload, opts)



Create a new user

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

api_instance = SwaggerClient::UsersApi.new

payload = SwaggerClient::User.new # User | 

opts = { 
  x_fields: 'x_fields_example' # String | An optional fields mask
}

begin
  result = api_instance.post_user_list_dao(payload, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersApi->post_user_list_dao: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**User**](User.md)|  | 
 **x_fields** | **String**| An optional fields mask | [optional] 

### Return type

[**User**](User.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_quota_dao**
> put_quota_dao(user_id, payload)



Add or subtract quota for a user

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

api_instance = SwaggerClient::UsersApi.new

user_id = 56 # Integer | User identifier

payload = SwaggerClient::UserQuota.new # UserQuota | 


begin
  api_instance.put_quota_dao(user_id, payload)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersApi->put_quota_dao: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| User identifier | 
 **payload** | [**UserQuota**](UserQuota.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_user_dao**
> User put_user_dao(user_idpayload, opts)



Update a user

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

api_instance = SwaggerClient::UsersApi.new

user_id = 56 # Integer | User identifier

payload = SwaggerClient::User.new # User | 

opts = { 
  x_fields: 'x_fields_example' # String | An optional fields mask
}

begin
  result = api_instance.put_user_dao(user_idpayload, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersApi->put_user_dao: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| User identifier | 
 **payload** | [**User**](User.md)|  | 
 **x_fields** | **String**| An optional fields mask | [optional] 

### Return type

[**User**](User.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



