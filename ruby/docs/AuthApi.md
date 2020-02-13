# SwaggerClient::AuthApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**logout_a_user**](AuthApi.md#logout_a_user) | **POST** /auth/logout | 
[**user_login**](AuthApi.md#user_login) | **POST** /auth/login | 


# **logout_a_user**
> AuthLogout logout_a_user(opts)



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

api_instance = SwaggerClient::AuthApi.new

opts = { 
  x_fields: 'x_fields_example' # String | An optional fields mask
}

begin
  result = api_instance.logout_a_user(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AuthApi->logout_a_user: #{e}"
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



# **user_login**
> AuthResponse user_login(payload, opts)



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AuthApi.new

payload = SwaggerClient::Login.new # Login | 

opts = { 
  x_fields: 'x_fields_example' # String | An optional fields mask
}

begin
  result = api_instance.user_login(payload, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AuthApi->user_login: #{e}"
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



