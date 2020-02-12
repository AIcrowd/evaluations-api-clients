# WWW::SwaggerClient::AuthApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::AuthApi;
```

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**logout_a_user**](AuthApi.md#logout_a_user) | **POST** /auth/logout | 
[**user_login**](AuthApi.md#user_login) | **POST** /auth/login | 


# **logout_a_user**
> logout_a_user()



### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::AuthApi;
my $api_instance = WWW::SwaggerClient::AuthApi->new(

    # Configure API key authorization: api_key
    api_key => {'AUTHORIZATION' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'AUTHORIZATION' => 'Bearer'},
);


eval { 
    $api_instance->logout_a_user();
};
if ($@) {
    warn "Exception when calling AuthApi->logout_a_user: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **user_login**
> user_login(payload => $payload)



### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::AuthApi;
my $api_instance = WWW::SwaggerClient::AuthApi->new(
);

my $payload = WWW::SwaggerClient::Object::Login->new(); # Login | 

eval { 
    $api_instance->user_login(payload => $payload);
};
if ($@) {
    warn "Exception when calling AuthApi->user_login: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**Login**](Login.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

