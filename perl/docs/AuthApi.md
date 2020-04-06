# AIcrowdEvaluations::AuthApi

## Load the API package
```perl
use AIcrowdEvaluations::Object::AuthApi;
```

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**login**](AuthApi.md#login) | **POST** /auth/login | 
[**logout**](AuthApi.md#logout) | **POST** /auth/logout | 


# **login**
> AuthResponse login(payload => $payload, x_fields => $x_fields)



Log in a user with email and password.

### Example 
```perl
use Data::Dumper;
use AIcrowdEvaluations::AuthApi;
my $api_instance = AIcrowdEvaluations::AuthApi->new(
);

my $payload = AIcrowdEvaluations::Object::Login->new(); # Login | 
my $x_fields = 'x_fields_example'; # string | An optional fields mask

eval { 
    my $result = $api_instance->login(payload => $payload, x_fields => $x_fields);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AuthApi->login: $@\n";
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

# **logout**
> AuthLogout logout(x_fields => $x_fields)



Invalidate the current authorization token.

### Example 
```perl
use Data::Dumper;
use AIcrowdEvaluations::AuthApi;
my $api_instance = AIcrowdEvaluations::AuthApi->new(

    # Configure API key authorization: api_key
    api_key => {'AUTHORIZATION' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'AUTHORIZATION' => 'Bearer'},
);

my $x_fields = 'x_fields_example'; # string | An optional fields mask

eval { 
    my $result = $api_instance->logout(x_fields => $x_fields);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AuthApi->logout: $@\n";
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

