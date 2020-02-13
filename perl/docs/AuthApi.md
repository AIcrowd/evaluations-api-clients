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
> AuthLogout logout_a_user(x_fields => $x_fields)



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

my $x_fields = 'x_fields_example'; # string | An optional fields mask

eval { 
    my $result = $api_instance->logout_a_user(x_fields => $x_fields);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AuthApi->logout_a_user: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_fields** | **string**| An optional fields mask | [optional] 

### Return type

[**AuthLogout**](AuthLogout.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **user_login**
> AuthResponse user_login(payload => $payload, x_fields => $x_fields)



### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::AuthApi;
my $api_instance = WWW::SwaggerClient::AuthApi->new(
);

my $payload = WWW::SwaggerClient::Object::Login->new(); # Login | 
my $x_fields = 'x_fields_example'; # string | An optional fields mask

eval { 
    my $result = $api_instance->user_login(payload => $payload, x_fields => $x_fields);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AuthApi->user_login: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**Login**](Login.md)|  | 
 **x_fields** | **string**| An optional fields mask | [optional] 

### Return type

[**AuthResponse**](AuthResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

