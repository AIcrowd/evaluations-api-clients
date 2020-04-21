# AIcrowdEvaluations::UsersApi

## Load the API package
```perl
use AIcrowdEvaluations::Object::UsersApi;
```

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_user**](UsersApi.md#create_user) | **POST** /users/ | 
[**delete_user**](UsersApi.md#delete_user) | **DELETE** /users/{user_id} | 
[**get_user**](UsersApi.md#get_user) | **GET** /users/{user_id} | 
[**list_users**](UsersApi.md#list_users) | **GET** /users/ | 
[**update_user**](UsersApi.md#update_user) | **PUT** /users/{user_id} | 
[**update_user_quota**](UsersApi.md#update_user_quota) | **PUT** /users/{user_id}/addquota | 


# **create_user**
> User create_user(payload => $payload, x_fields => $x_fields)



Create a new user

### Example 
```perl
use Data::Dumper;
use AIcrowdEvaluations::UsersApi;
my $api_instance = AIcrowdEvaluations::UsersApi->new(

    # Configure API key authorization: api_key
    api_key => {'AUTHORIZATION' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'AUTHORIZATION' => 'Bearer'},
);

my $payload = AIcrowdEvaluations::Object::User->new(); # User | 
my $x_fields = 'x_fields_example'; # string | An optional fields mask

eval { 
    my $result = $api_instance->create_user(payload => $payload, x_fields => $x_fields);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersApi->create_user: $@\n";
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

# **delete_user**
> delete_user(user_id => $user_id)



Delete a user

### Example 
```perl
use Data::Dumper;
use AIcrowdEvaluations::UsersApi;
my $api_instance = AIcrowdEvaluations::UsersApi->new(

    # Configure API key authorization: api_key
    api_key => {'AUTHORIZATION' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'AUTHORIZATION' => 'Bearer'},
);

my $user_id = 56; # int | 

eval { 
    $api_instance->delete_user(user_id => $user_id);
};
if ($@) {
    warn "Exception when calling UsersApi->delete_user: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **int**|  | 

### Return type

void (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_user**
> User get_user(user_id => $user_id, x_fields => $x_fields)



Get information of a user

### Example 
```perl
use Data::Dumper;
use AIcrowdEvaluations::UsersApi;
my $api_instance = AIcrowdEvaluations::UsersApi->new(

    # Configure API key authorization: api_key
    api_key => {'AUTHORIZATION' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'AUTHORIZATION' => 'Bearer'},
);

my $user_id = 56; # int | 
my $x_fields = 'x_fields_example'; # string | An optional fields mask

eval { 
    my $result = $api_instance->get_user(user_id => $user_id, x_fields => $x_fields);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersApi->get_user: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **int**|  | 
 **x_fields** | **string**| An optional fields mask | [optional] 

### Return type

[**User**](User.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_users**
> ARRAY[User] list_users(x_fields => $x_fields)



Get all user

### Example 
```perl
use Data::Dumper;
use AIcrowdEvaluations::UsersApi;
my $api_instance = AIcrowdEvaluations::UsersApi->new(

    # Configure API key authorization: api_key
    api_key => {'AUTHORIZATION' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'AUTHORIZATION' => 'Bearer'},
);

my $x_fields = 'x_fields_example'; # string | An optional fields mask

eval { 
    my $result = $api_instance->list_users(x_fields => $x_fields);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersApi->list_users: $@\n";
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

# **update_user**
> User update_user(user_id => $user_id, payload => $payload, x_fields => $x_fields)



Update a user

### Example 
```perl
use Data::Dumper;
use AIcrowdEvaluations::UsersApi;
my $api_instance = AIcrowdEvaluations::UsersApi->new(

    # Configure API key authorization: api_key
    api_key => {'AUTHORIZATION' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'AUTHORIZATION' => 'Bearer'},
);

my $user_id = 56; # int | 
my $payload = AIcrowdEvaluations::Object::User->new(); # User | 
my $x_fields = 'x_fields_example'; # string | An optional fields mask

eval { 
    my $result = $api_instance->update_user(user_id => $user_id, payload => $payload, x_fields => $x_fields);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersApi->update_user: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **int**|  | 
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

# **update_user_quota**
> update_user_quota(user_id => $user_id, payload => $payload)



Add or subtract quota for a user

### Example 
```perl
use Data::Dumper;
use AIcrowdEvaluations::UsersApi;
my $api_instance = AIcrowdEvaluations::UsersApi->new(

    # Configure API key authorization: api_key
    api_key => {'AUTHORIZATION' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'AUTHORIZATION' => 'Bearer'},
);

my $user_id = 56; # int | 
my $payload = AIcrowdEvaluations::Object::UserQuota->new(); # UserQuota | 

eval { 
    $api_instance->update_user_quota(user_id => $user_id, payload => $payload);
};
if ($@) {
    warn "Exception when calling UsersApi->update_user_quota: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **int**|  | 
 **payload** | [**UserQuota**](UserQuota.md)|  | 

### Return type

void (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

