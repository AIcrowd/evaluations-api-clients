# AIcrowdEvaluations::AuthApi

## Load the API package
```perl
use AIcrowdEvaluations::Object::AuthApi;
```

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**post_logout_api**](AuthApi.md#post_logout_api) | **POST** /auth/logout | 
[**post_user_login**](AuthApi.md#post_user_login) | **POST** /auth/login | 


# **post_logout_api**
> AuthLogout post_logout_api(x_fields => $x_fields)



Logout a user

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
    my $result = $api_instance->post_logout_api(x_fields => $x_fields);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AuthApi->post_logout_api: $@\n";
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

# **post_user_login**
> AuthResponse post_user_login(payload => $payload, x_fields => $x_fields)



User login

### Example 
```perl
use Data::Dumper;
use AIcrowdEvaluations::AuthApi;
my $api_instance = AIcrowdEvaluations::AuthApi->new(
);

my $payload = AIcrowdEvaluations::Object::Login->new(); # Login | 
my $x_fields = 'x_fields_example'; # string | An optional fields mask

eval { 
    my $result = $api_instance->post_user_login(payload => $payload, x_fields => $x_fields);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AuthApi->post_user_login: $@\n";
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

