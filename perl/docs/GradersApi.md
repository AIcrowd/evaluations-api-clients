# AIcrowdEvaluations::GradersApi

## Load the API package
```perl
use AIcrowdEvaluations::Object::GradersApi;
```

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**archive_grader**](GradersApi.md#archive_grader) | **POST** /graders/{grader_id}/archive | 
[**create_grader**](GradersApi.md#create_grader) | **POST** /graders/ | 
[**delete_grader**](GradersApi.md#delete_grader) | **DELETE** /graders/{grader_id} | 
[**download_grader_logs**](GradersApi.md#download_grader_logs) | **GET** /graders/{grader_id}/logs/download | 
[**get_grader**](GradersApi.md#get_grader) | **GET** /graders/{grader_id} | 
[**get_grader_logs**](GradersApi.md#get_grader_logs) | **GET** /graders/{grader_id}/logs | 
[**list_graders**](GradersApi.md#list_graders) | **GET** /graders/ | 
[**unarchive_grader**](GradersApi.md#unarchive_grader) | **POST** /graders/{grader_id}/unarchive | 
[**update_grader**](GradersApi.md#update_grader) | **PATCH** /graders/{grader_id} | 


# **archive_grader**
> archive_grader(grader_id => $grader_id)



Archive a grader

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
    $api_instance->archive_grader(grader_id => $grader_id);
};
if ($@) {
    warn "Exception when calling GradersApi->archive_grader: $@\n";
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

# **download_grader_logs**
> download_grader_logs(grader_id => $grader_id)



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
    $api_instance->download_grader_logs(grader_id => $grader_id);
};
if ($@) {
    warn "Exception when calling GradersApi->download_grader_logs: $@\n";
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
> GraderLogs get_grader_logs(grader_id => $grader_id, step => $step, log_lines => $log_lines, x_fields => $x_fields)



Get grader logs from loki

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
my $step = 56; # int | Granularity of logs
my $log_lines = 56; # int | Number of lines to fetch
my $x_fields = 'x_fields_example'; # string | An optional fields mask

eval { 
    my $result = $api_instance->get_grader_logs(grader_id => $grader_id, step => $step, log_lines => $log_lines, x_fields => $x_fields);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GradersApi->get_grader_logs: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grader_id** | **int**|  | 
 **step** | **int**| Granularity of logs | [optional] 
 **log_lines** | **int**| Number of lines to fetch | [optional] 
 **x_fields** | **string**| An optional fields mask | [optional] 

### Return type

[**GraderLogs**](GraderLogs.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_graders**
> ARRAY[Grader] list_graders(per_page => $per_page, page => $page, meta => $meta, name => $name, status => $status, user_id => $user_id, x_fields => $x_fields)



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

my $per_page = 'per_page_example'; # string | Results to display per page
my $page = 'page_example'; # string | Page number
my $meta = 'meta_example'; # string | Fetch graders containing this meta value
my $name = 'name_example'; # string | Fetch grader containing name
my $status = 'status_example'; # string | Fetch graders with this status
my $user_id = 56; # int | Fetch graders created by the user
my $x_fields = 'x_fields_example'; # string | An optional fields mask

eval { 
    my $result = $api_instance->list_graders(per_page => $per_page, page => $page, meta => $meta, name => $name, status => $status, user_id => $user_id, x_fields => $x_fields);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GradersApi->list_graders: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **per_page** | **string**| Results to display per page | [optional] 
 **page** | **string**| Page number | [optional] 
 **meta** | **string**| Fetch graders containing this meta value | [optional] 
 **name** | **string**| Fetch grader containing name | [optional] 
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

# **unarchive_grader**
> unarchive_grader(grader_id => $grader_id)



Unarchive a grader

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
    $api_instance->unarchive_grader(grader_id => $grader_id);
};
if ($@) {
    warn "Exception when calling GradersApi->unarchive_grader: $@\n";
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

# **update_grader**
> Grader update_grader(grader_id => $grader_id, payload => $payload, x_fields => $x_fields)



Update meta details of a grader by its ID. Warning: There is no data validation.

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
my $payload = AIcrowdEvaluations::Object::GraderMeta->new(); # GraderMeta | 
my $x_fields = 'x_fields_example'; # string | An optional fields mask

eval { 
    my $result = $api_instance->update_grader(grader_id => $grader_id, payload => $payload, x_fields => $x_fields);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GradersApi->update_grader: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grader_id** | **int**|  | 
 **payload** | [**GraderMeta**](GraderMeta.md)|  | 
 **x_fields** | **string**| An optional fields mask | [optional] 

### Return type

[**Grader**](Grader.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

