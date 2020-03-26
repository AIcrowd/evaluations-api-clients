# AIcrowdEvaluations::AuthApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**post_logout_api**](AuthApi.md#post_logout_api) | **POST** /auth/logout | 
[**post_user_login**](AuthApi.md#post_user_login) | **POST** /auth/login | 


# **post_logout_api**
> AuthLogout post_logout_api(opts)



Logout a user

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

api_instance = AIcrowdEvaluations::AuthApi.new

opts = { 
  x_fields: 'x_fields_example' # String | An optional fields mask
}

begin
  result = api_instance.post_logout_api(opts)
  p result
rescue AIcrowdEvaluations::ApiError => e
  puts "Exception when calling AuthApi->post_logout_api: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_fields** | **String**| An optional fields mask | [optional] 

### Return type

[**AuthLogout**](AuthLogout.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_user_login**
> AuthResponse post_user_login(payload, opts)



User login

### Example
```ruby
# load the gem
require 'aicrowd_evaluations'

api_instance = AIcrowdEvaluations::AuthApi.new

payload = AIcrowdEvaluations::Login.new # Login | 

opts = { 
  x_fields: 'x_fields_example' # String | An optional fields mask
}

begin
  result = api_instance.post_user_login(payload, opts)
  p result
rescue AIcrowdEvaluations::ApiError => e
  puts "Exception when calling AuthApi->post_user_login: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**Login**](Login.md)|  | 
 **x_fields** | **String**| An optional fields mask | [optional] 

### Return type

[**AuthResponse**](AuthResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



