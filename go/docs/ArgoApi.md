# \ArgoApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**PostGenericFeedbackContract**](ArgoApi.md#PostGenericFeedbackContract) | **Post** /argo/{model_name}/{object_id} | 
[**PostGraderFeedbackDao**](ArgoApi.md#PostGraderFeedbackDao) | **Post** /argo/graders/{grader_id} | 
[**PostSubmissionFeedbackDao**](ArgoApi.md#PostSubmissionFeedbackDao) | **Post** /argo/submissions/{submission_id} | 


# **PostGenericFeedbackContract**
> PostGenericFeedbackContract(ctx, modelName, objectId, payload)


Update the status of an object

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **modelName** | **string**|  | 
  **objectId** | **int32**|  | 
  **payload** | [**GenericFeedback**](GenericFeedback.md)|  | 

### Return type

 (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **PostGraderFeedbackDao**
> PostGraderFeedbackDao(ctx, graderId, payload)


Update the grader details

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **graderId** | **int32**|  | 
  **payload** | [**GraderFeedback**](GraderFeedback.md)|  | 

### Return type

 (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **PostSubmissionFeedbackDao**
> PostSubmissionFeedbackDao(ctx, submissionId, payload)


Update the submission details

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **submissionId** | **int32**|  | 
  **payload** | [**SubmissionFeedback**](SubmissionFeedback.md)|  | 

### Return type

 (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

