# AIcrowdEvaluations::SubmissionsApi

## Load the API package
```perl
use AIcrowdEvaluations::Object::SubmissionsApi;
```

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_submission**](SubmissionsApi.md#create_submission) | **POST** /submissions/ | 
[**delete_submission**](SubmissionsApi.md#delete_submission) | **DELETE** /submissions/{submission_id} | 
[**get_submission**](SubmissionsApi.md#get_submission) | **GET** /submissions/{submission_id} | 
[**get_submission_data**](SubmissionsApi.md#get_submission_data) | **GET** /submissions/{submission_id}/data | 
[**get_submission_logs**](SubmissionsApi.md#get_submission_logs) | **GET** /submissions/{submission_id}/logs | 
[**list_submissions**](SubmissionsApi.md#list_submissions) | **GET** /submissions/ | 
[**retry_submissions**](SubmissionsApi.md#retry_submissions) | **POST** /submissions/retry | 


# **create_submission**
> Submissions create_submission(payload => $payload, x_fields => $x_fields)



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
    my $result = $api_instance->create_submission(payload => $payload, x_fields => $x_fields);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SubmissionsApi->create_submission: $@\n";
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

# **delete_submission**
> delete_submission(submission_id => $submission_id)



Stop evaluation of a submission and delete it

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
    $api_instance->delete_submission(submission_id => $submission_id);
};
if ($@) {
    warn "Exception when calling SubmissionsApi->delete_submission: $@\n";
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

# **get_submission**
> Submissions get_submission(submission_id => $submission_id, x_fields => $x_fields)



Get details of a submission by its ID

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
    my $result = $api_instance->get_submission(submission_id => $submission_id, x_fields => $x_fields);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SubmissionsApi->get_submission: $@\n";
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

# **get_submission_data**
> get_submission_data(submission_id => $submission_id)



Get the submission data by submission ID

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
    $api_instance->get_submission_data(submission_id => $submission_id);
};
if ($@) {
    warn "Exception when calling SubmissionsApi->get_submission_data: $@\n";
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

# **get_submission_logs**
> get_submission_logs(submission_id => $submission_id)



Get the submission logs by submission ID

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
    $api_instance->get_submission_logs(submission_id => $submission_id);
};
if ($@) {
    warn "Exception when calling SubmissionsApi->get_submission_logs: $@\n";
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

# **list_submissions**
> ARRAY[Submissions] list_submissions(per_page => $per_page, page => $page, meta => $meta, status => $status, grader_id => $grader_id, user_id => $user_id, x_fields => $x_fields)



List all submissions available

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

my $per_page = 'per_page_example'; # string | Results to display per page
my $page = 'page_example'; # string | Page number
my $meta = 'meta_example'; # string | Fetch submissions containing this meta value
my $status = 'status_example'; # string | Fetch submissions with this status
my $grader_id = 56; # int | Fetch submissions for a grader
my $user_id = 56; # int | Fetch submissions created by the user
my $x_fields = 'x_fields_example'; # string | An optional fields mask

eval { 
    my $result = $api_instance->list_submissions(per_page => $per_page, page => $page, meta => $meta, status => $status, grader_id => $grader_id, user_id => $user_id, x_fields => $x_fields);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SubmissionsApi->list_submissions: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **per_page** | **string**| Results to display per page | [optional] 
 **page** | **string**| Page number | [optional] 
 **meta** | **string**| Fetch submissions containing this meta value | [optional] 
 **status** | **string**| Fetch submissions with this status | [optional] 
 **grader_id** | **int**| Fetch submissions for a grader | [optional] 
 **user_id** | **int**| Fetch submissions created by the user | [optional] 
 **x_fields** | **string**| An optional fields mask | [optional] 

### Return type

[**ARRAY[Submissions]**](Submissions.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retry_submissions**
> SubmissionRetry retry_submissions(payload => $payload, x_fields => $x_fields)



Retry the submissions with given IDs

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

my $payload = AIcrowdEvaluations::Object::SubmissionRetryInput->new(); # SubmissionRetryInput | 
my $x_fields = 'x_fields_example'; # string | An optional fields mask

eval { 
    my $result = $api_instance->retry_submissions(payload => $payload, x_fields => $x_fields);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SubmissionsApi->retry_submissions: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**SubmissionRetryInput**](SubmissionRetryInput.md)|  | 
 **x_fields** | **string**| An optional fields mask | [optional] 

### Return type

[**SubmissionRetry**](SubmissionRetry.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

