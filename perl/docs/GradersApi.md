# AIcrowdEvaluations::GradersApi

## Load the API package
```perl
use AIcrowdEvaluations::Object::GradersApi;
```

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_grader**](GradersApi.md#create_grader) | **POST** /graders/ | 
[**delete_grader**](GradersApi.md#delete_grader) | **DELETE** /graders/{grader_id} | 
[**get_grader**](GradersApi.md#get_grader) | **GET** /graders/{grader_id} | 
[**get_grader_logs**](GradersApi.md#get_grader_logs) | **GET** /graders/{grader_id}/logs | 
[**list_graders**](GradersApi.md#list_graders) | **GET** /graders/ | 


# **create_grader**
> Grader create_grader(payload => $payload, x_fields => $x_fields)



Create a new grader

### Example 
```perl
use Data::Dumper;
use AIcrowdEvaluations::GradersApi;
my $api_instance = AIcrowdEvaluations::GradersApi->new(

    # Configure API key authorization: api_key
    api_key => {'AUTHORIZATION' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'AUTHORIZATION' => 'Bearer'},
);

my $payload = AIcrowdEvaluations::Object::Grader->new(); # Grader | 
my $x_fields = 'x_fields_example'; # string | An optional fields mask

eval { 
    my $result = $api_instance->create_grader(payload => $payload, x_fields => $x_fields);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GradersApi->create_grader: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**Grader**](Grader.md)|  | 
 **x_fields** | **string**| An optional fields mask | [optional] 

### Return type

[**Grader**](Grader.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_grader**
> delete_grader(grader_id => $grader_id)



Delete a grader by its ID

### Example 
```perl
use Data::Dumper;
use AIcrowdEvaluations::GradersApi;
my $api_instance = AIcrowdEvaluations::GradersApi->new(

    # Configure API key authorization: api_key
    api_key => {'AUTHORIZATION' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'AUTHORIZATION' => 'Bearer'},
);

my $grader_id = 56; # int | 

eval { 
    $api_instance->delete_grader(grader_id => $grader_id);
};
if ($@) {
    warn "Exception when calling GradersApi->delete_grader: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grader_id** | **int**|  | 

### Return type

void (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_grader**
> Grader get_grader(grader_id => $grader_id, x_fields => $x_fields)



Get details of a grader by its ID

### Example 
```perl
use Data::Dumper;
use AIcrowdEvaluations::GradersApi;
my $api_instance = AIcrowdEvaluations::GradersApi->new(

    # Configure API key authorization: api_key
    api_key => {'AUTHORIZATION' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'AUTHORIZATION' => 'Bearer'},
);

my $grader_id = 56; # int | 
my $x_fields = 'x_fields_example'; # string | An optional fields mask

eval { 
    my $result = $api_instance->get_grader(grader_id => $grader_id, x_fields => $x_fields);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GradersApi->get_grader: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grader_id** | **int**|  | 
 **x_fields** | **string**| An optional fields mask | [optional] 

### Return type

[**Grader**](Grader.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_grader_logs**
> get_grader_logs(grader_id => $grader_id)



Get the grader logs by submission ID

### Example 
```perl
use Data::Dumper;
use AIcrowdEvaluations::GradersApi;
my $api_instance = AIcrowdEvaluations::GradersApi->new(

    # Configure API key authorization: api_key
    api_key => {'AUTHORIZATION' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'AUTHORIZATION' => 'Bearer'},
);

my $grader_id = 56; # int | 

eval { 
    $api_instance->get_grader_logs(grader_id => $grader_id);
};
if ($@) {
    warn "Exception when calling GradersApi->get_grader_logs: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grader_id** | **int**|  | 

### Return type

void (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_graders**
> ARRAY[Grader] list_graders(name => $name, status => $status, user_id => $user_id, x_fields => $x_fields)



List all graders available

### Example 
```perl
use Data::Dumper;
use AIcrowdEvaluations::GradersApi;
my $api_instance = AIcrowdEvaluations::GradersApi->new(

    # Configure API key authorization: api_key
    api_key => {'AUTHORIZATION' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'AUTHORIZATION' => 'Bearer'},
);

my $name = 'name_example'; # string | Fetch grader with this name
my $status = 'status_example'; # string | Fetch graders with this status
my $user_id = 56; # int | Fetch graders created by the user
my $x_fields = 'x_fields_example'; # string | An optional fields mask

eval { 
    my $result = $api_instance->list_graders(name => $name, status => $status, user_id => $user_id, x_fields => $x_fields);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GradersApi->list_graders: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Fetch grader with this name | [optional] 
 **status** | **string**| Fetch graders with this status | [optional] 
 **user_id** | **int**| Fetch graders created by the user | [optional] 
 **x_fields** | **string**| An optional fields mask | [optional] 

### Return type

[**ARRAY[Grader]**](Grader.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

