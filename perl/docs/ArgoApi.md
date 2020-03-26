# AIcrowdEvaluations::ArgoApi

## Load the API package
```perl
use AIcrowdEvaluations::Object::ArgoApi;
```

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**post_generic_feedback_contract**](ArgoApi.md#post_generic_feedback_contract) | **POST** /argo/{model_name}/{object_id} | 
[**post_grader_feedback_dao**](ArgoApi.md#post_grader_feedback_dao) | **POST** /argo/graders/{grader_id} | 
[**post_submission_feedback_dao**](ArgoApi.md#post_submission_feedback_dao) | **POST** /argo/submissions/{submission_id} | 


# **post_generic_feedback_contract**
> post_generic_feedback_contract(model_name => $model_name, object_id => $object_id, payload => $payload)



Update the status of an object

### Example 
```perl
use Data::Dumper;
use AIcrowdEvaluations::ArgoApi;
my $api_instance = AIcrowdEvaluations::ArgoApi->new(

    # Configure API key authorization: api_key
    api_key => {'AUTHORIZATION' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'AUTHORIZATION' => 'Bearer'},
);

my $model_name = 'model_name_example'; # string | 
my $object_id = 56; # int | 
my $payload = AIcrowdEvaluations::Object::GenericFeedback->new(); # GenericFeedback | 

eval { 
    $api_instance->post_generic_feedback_contract(model_name => $model_name, object_id => $object_id, payload => $payload);
};
if ($@) {
    warn "Exception when calling ArgoApi->post_generic_feedback_contract: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model_name** | **string**|  | 
 **object_id** | **int**|  | 
 **payload** | [**GenericFeedback**](GenericFeedback.md)|  | 

### Return type

void (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_grader_feedback_dao**
> post_grader_feedback_dao(grader_id => $grader_id, payload => $payload)



Update the grader details

### Example 
```perl
use Data::Dumper;
use AIcrowdEvaluations::ArgoApi;
my $api_instance = AIcrowdEvaluations::ArgoApi->new(

    # Configure API key authorization: api_key
    api_key => {'AUTHORIZATION' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'AUTHORIZATION' => 'Bearer'},
);

my $grader_id = 56; # int | 
my $payload = AIcrowdEvaluations::Object::GraderFeedback->new(); # GraderFeedback | 

eval { 
    $api_instance->post_grader_feedback_dao(grader_id => $grader_id, payload => $payload);
};
if ($@) {
    warn "Exception when calling ArgoApi->post_grader_feedback_dao: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grader_id** | **int**|  | 
 **payload** | [**GraderFeedback**](GraderFeedback.md)|  | 

### Return type

void (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_submission_feedback_dao**
> post_submission_feedback_dao(submission_id => $submission_id, payload => $payload)



Update the submission details

### Example 
```perl
use Data::Dumper;
use AIcrowdEvaluations::ArgoApi;
my $api_instance = AIcrowdEvaluations::ArgoApi->new(

    # Configure API key authorization: api_key
    api_key => {'AUTHORIZATION' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'AUTHORIZATION' => 'Bearer'},
);

my $submission_id = 56; # int | 
my $payload = AIcrowdEvaluations::Object::SubmissionFeedback->new(); # SubmissionFeedback | 

eval { 
    $api_instance->post_submission_feedback_dao(submission_id => $submission_id, payload => $payload);
};
if ($@) {
    warn "Exception when calling ArgoApi->post_submission_feedback_dao: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submission_id** | **int**|  | 
 **payload** | [**SubmissionFeedback**](SubmissionFeedback.md)|  | 

### Return type

void (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

