# AIcrowdEvaluations::SubmissionsApi

## Load the API package
```perl
use AIcrowdEvaluations::Object::SubmissionsApi;
```

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_submission_dao**](SubmissionsApi.md#delete_submission_dao) | **DELETE** /submissions/{submission_id} | 
[**get_submission_dao**](SubmissionsApi.md#get_submission_dao) | **GET** /submissions/{submission_id} | 
[**get_submission_data_dao**](SubmissionsApi.md#get_submission_data_dao) | **GET** /submissions/{submission_id}/data | 
[**get_submission_list_dao**](SubmissionsApi.md#get_submission_list_dao) | **GET** /submissions/ | 
[**post_submission_list_dao**](SubmissionsApi.md#post_submission_list_dao) | **POST** /submissions/ | 


# **delete_submission_dao**
> delete_submission_dao(submission_id => $submission_id)



Stop evaluation of a submission

### Example 
```perl
use Data::Dumper;
use AIcrowdEvaluations::SubmissionsApi;
my $api_instance = AIcrowdEvaluations::SubmissionsApi->new(

    # Configure API key authorization: api_key
    api_key => {'AUTHORIZATION' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'AUTHORIZATION' => 'Bearer'},
);

my $submission_id = 56; # int | 

eval { 
    $api_instance->delete_submission_dao(submission_id => $submission_id);
};
if ($@) {
    warn "Exception when calling SubmissionsApi->delete_submission_dao: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submission_id** | **int**|  | 

### Return type

void (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_submission_dao**
> Submissions get_submission_dao(submission_id => $submission_id, x_fields => $x_fields)



Get details of a submission

### Example 
```perl
use Data::Dumper;
use AIcrowdEvaluations::SubmissionsApi;
my $api_instance = AIcrowdEvaluations::SubmissionsApi->new(

    # Configure API key authorization: api_key
    api_key => {'AUTHORIZATION' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'AUTHORIZATION' => 'Bearer'},
);

my $submission_id = 56; # int | 
my $x_fields = 'x_fields_example'; # string | An optional fields mask

eval { 
    my $result = $api_instance->get_submission_dao(submission_id => $submission_id, x_fields => $x_fields);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SubmissionsApi->get_submission_dao: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submission_id** | **int**|  | 
 **x_fields** | **string**| An optional fields mask | [optional] 

### Return type

[**Submissions**](Submissions.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_submission_data_dao**
> get_submission_data_dao(submission_id => $submission_id)



Get the submission data

### Example 
```perl
use Data::Dumper;
use AIcrowdEvaluations::SubmissionsApi;
my $api_instance = AIcrowdEvaluations::SubmissionsApi->new(

    # Configure API key authorization: api_key
    api_key => {'AUTHORIZATION' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'AUTHORIZATION' => 'Bearer'},
);

my $submission_id = 56; # int | 

eval { 
    $api_instance->get_submission_data_dao(submission_id => $submission_id);
};
if ($@) {
    warn "Exception when calling SubmissionsApi->get_submission_data_dao: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submission_id** | **int**|  | 

### Return type

void (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_submission_list_dao**
> ARRAY[Submissions] get_submission_list_dao(x_fields => $x_fields)



Get all submissions

### Example 
```perl
use Data::Dumper;
use AIcrowdEvaluations::SubmissionsApi;
my $api_instance = AIcrowdEvaluations::SubmissionsApi->new(

    # Configure API key authorization: api_key
    api_key => {'AUTHORIZATION' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'AUTHORIZATION' => 'Bearer'},
);

my $x_fields = 'x_fields_example'; # string | An optional fields mask

eval { 
    my $result = $api_instance->get_submission_list_dao(x_fields => $x_fields);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SubmissionsApi->get_submission_list_dao: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_fields** | **string**| An optional fields mask | [optional] 

### Return type

[**ARRAY[Submissions]**](Submissions.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_submission_list_dao**
> Submissions post_submission_list_dao(payload => $payload, x_fields => $x_fields)



Make a new submission

### Example 
```perl
use Data::Dumper;
use AIcrowdEvaluations::SubmissionsApi;
my $api_instance = AIcrowdEvaluations::SubmissionsApi->new(

    # Configure API key authorization: api_key
    api_key => {'AUTHORIZATION' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'AUTHORIZATION' => 'Bearer'},
);

my $payload = AIcrowdEvaluations::Object::Submissions->new(); # Submissions | 
my $x_fields = 'x_fields_example'; # string | An optional fields mask

eval { 
    my $result = $api_instance->post_submission_list_dao(payload => $payload, x_fields => $x_fields);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SubmissionsApi->post_submission_list_dao: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**Submissions**](Submissions.md)|  | 
 **x_fields** | **string**| An optional fields mask | [optional] 

### Return type

[**Submissions**](Submissions.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

