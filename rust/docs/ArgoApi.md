# \ArgoApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**post_generic_feedback_contract**](ArgoApi.md#post_generic_feedback_contract) | **Post** /argo/{model_name}/{object_id} | 
[**post_grader_feedback_dao**](ArgoApi.md#post_grader_feedback_dao) | **Post** /argo/graders/{grader_id} | 
[**post_submission_feedback_dao**](ArgoApi.md#post_submission_feedback_dao) | **Post** /argo/submissions/{submission_id} | 


# **post_generic_feedback_contract**
> post_generic_feedback_contract(ctx, model_name, object_id, payload)


Update the status of an object

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **model_name** | **String**|  | 
  **object_id** | **i32**|  | 
  **payload** | [**GenericFeedback**](GenericFeedback.md)|  | 

### Return type

 (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_grader_feedback_dao**
> post_grader_feedback_dao(ctx, grader_id, payload)


Update the grader details

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **grader_id** | **i32**|  | 
  **payload** | [**GraderFeedback**](GraderFeedback.md)|  | 

### Return type

 (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_submission_feedback_dao**
> post_submission_feedback_dao(ctx, submission_id, payload)


Update the submission details

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **submission_id** | **i32**|  | 
  **payload** | [**SubmissionFeedback**](SubmissionFeedback.md)|  | 

### Return type

 (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

