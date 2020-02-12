# WWW::SwaggerClient::UsersApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::UsersApi;
```

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
> delete_user_dao(user_id => $user_id)



Delete a user

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::UsersApi;
my $api_instance = WWW::SwaggerClient::UsersApi->new(

    # Configure API key authorization: api_key
    api_key => {'AUTHORIZATION' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'AUTHORIZATION' => 'Bearer'},
);

my $user_id = 56; # int | User identifier

eval { 
    $api_instance->delete_user_dao(user_id => $user_id);
};
if ($@) {
    warn "Exception when calling UsersApi->delete_user_dao: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **int**| User identifier | 

### Return type

void (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_user_dao**
> User get_user_dao(user_id => $user_id, x_fields => $x_fields)



Get information of a user

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::UsersApi;
my $api_instance = WWW::SwaggerClient::UsersApi->new(

    # Configure API key authorization: api_key
    api_key => {'AUTHORIZATION' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'AUTHORIZATION' => 'Bearer'},
);

my $user_id = 56; # int | User identifier
my $x_fields = 'x_fields_example'; # string | An optional fields mask

eval { 
    my $result = $api_instance->get_user_dao(user_id => $user_id, x_fields => $x_fields);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersApi->get_user_dao: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **int**| User identifier | 
 **x_fields** | **string**| An optional fields mask | [optional] 

### Return type

[**User**](User.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_user_list_dao**
> ARRAY[User] get_user_list_dao(x_fields => $x_fields)



Get all user

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::UsersApi;
my $api_instance = WWW::SwaggerClient::UsersApi->new(

    # Configure API key authorization: api_key
    api_key => {'AUTHORIZATION' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'AUTHORIZATION' => 'Bearer'},
);

my $x_fields = 'x_fields_example'; # string | An optional fields mask

eval { 
    my $result = $api_instance->get_user_list_dao(x_fields => $x_fields);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersApi->get_user_list_dao: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_fields** | **string**| An optional fields mask | [optional] 

### Return type

[**ARRAY[User]**](User.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_user_list_dao**
> User post_user_list_dao(payload => $payload, x_fields => $x_fields)



Create a new user

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::UsersApi;
my $api_instance = WWW::SwaggerClient::UsersApi->new(

    # Configure API key authorization: api_key
    api_key => {'AUTHORIZATION' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'AUTHORIZATION' => 'Bearer'},
);

my $payload = WWW::SwaggerClient::Object::User->new(); # User | 
my $x_fields = 'x_fields_example'; # string | An optional fields mask

eval { 
    my $result = $api_instance->post_user_list_dao(payload => $payload, x_fields => $x_fields);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersApi->post_user_list_dao: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**User**](User.md)|  | 
 **x_fields** | **string**| An optional fields mask | [optional] 

### Return type

[**User**](User.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **put_quota_dao**
> put_quota_dao(user_id => $user_id, payload => $payload)



Add or subtract quota for a user

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::UsersApi;
my $api_instance = WWW::SwaggerClient::UsersApi->new(

    # Configure API key authorization: api_key
    api_key => {'AUTHORIZATION' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'AUTHORIZATION' => 'Bearer'},
);

my $user_id = 56; # int | User identifier
my $payload = WWW::SwaggerClient::Object::UserQuota->new(); # UserQuota | 

eval { 
    $api_instance->put_quota_dao(user_id => $user_id, payload => $payload);
};
if ($@) {
    warn "Exception when calling UsersApi->put_quota_dao: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **int**| User identifier | 
 **payload** | [**UserQuota**](UserQuota.md)|  | 

### Return type

void (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **put_user_dao**
> User put_user_dao(user_id => $user_id, payload => $payload, x_fields => $x_fields)



Update a user

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::UsersApi;
my $api_instance = WWW::SwaggerClient::UsersApi->new(

    # Configure API key authorization: api_key
    api_key => {'AUTHORIZATION' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'AUTHORIZATION' => 'Bearer'},
);

my $user_id = 56; # int | User identifier
my $payload = WWW::SwaggerClient::Object::User->new(); # User | 
my $x_fields = 'x_fields_example'; # string | An optional fields mask

eval { 
    my $result = $api_instance->put_user_dao(user_id => $user_id, payload => $payload, x_fields => $x_fields);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersApi->put_user_dao: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **int**| User identifier | 
 **payload** | [**User**](User.md)|  | 
 **x_fields** | **string**| An optional fields mask | [optional] 

### Return type

[**User**](User.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

