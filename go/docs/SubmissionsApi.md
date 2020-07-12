# \SubmissionsApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateSubmission**](SubmissionsApi.md#CreateSubmission) | **Post** /submissions/ | 
[**DeleteSubmission**](SubmissionsApi.md#DeleteSubmission) | **Delete** /submissions/{submission_id} | 
[**GetSubmission**](SubmissionsApi.md#GetSubmission) | **Get** /submissions/{submission_id} | 
[**GetSubmissionData**](SubmissionsApi.md#GetSubmissionData) | **Get** /submissions/{submission_id}/data | 
[**GetSubmissionLogs**](SubmissionsApi.md#GetSubmissionLogs) | **Get** /submissions/{submission_id}/logs | 
[**ListSubmissions**](SubmissionsApi.md#ListSubmissions) | **Get** /submissions/ | 
[**RetrySubmissions**](SubmissionsApi.md#RetrySubmissions) | **Post** /submissions/retry | 


# **CreateSubmission**
> Submissions CreateSubmission(ctx, payload, optional)


Make a new submission

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **payload** | [**Submissions**](Submissions.md)|  | 
 **optional** | ***SubmissionsApiCreateSubmissionOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a SubmissionsApiCreateSubmissionOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **xFields** | **optional.String**| An optional fields mask | 

### Return type

[**Submissions**](Submissions.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DeleteSubmission**
> DeleteSubmission(ctx, submissionId)


Stop evaluation of a submission and delete it

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **submissionId** | **int32**|  | 

### Return type

 (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetSubmission**
> Submissions GetSubmission(ctx, submissionId, optional)


Get details of a submission by its ID

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **submissionId** | **int32**|  | 
 **optional** | ***SubmissionsApiGetSubmissionOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a SubmissionsApiGetSubmissionOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **xFields** | **optional.String**| An optional fields mask | 

### Return type

[**Submissions**](Submissions.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetSubmissionData**
> GetSubmissionData(ctx, submissionId)


Get the submission data by submission ID

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **submissionId** | **int32**|  | 

### Return type

 (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetSubmissionLogs**
> GetSubmissionLogs(ctx, submissionId)


Get the submission logs by submission ID

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **submissionId** | **int32**|  | 

### Return type

 (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ListSubmissions**
> []Submissions ListSubmissions(ctx, optional)


List all submissions available

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***SubmissionsApiListSubmissionsOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a SubmissionsApiListSubmissionsOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meta** | **optional.String**| Fetch submissions containing this meta value | 
 **status** | **optional.String**| Fetch submissions with this status | 
 **graderId** | **optional.Int32**| Fetch submissions for a grader | 
 **userId** | **optional.Int32**| Fetch submissions created by the user | 
 **xFields** | **optional.String**| An optional fields mask | 

### Return type

[**[]Submissions**](Submissions.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **RetrySubmissions**
> SubmissionRetry RetrySubmissions(ctx, payload, optional)


Retry the submissions with given IDs

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **payload** | [**SubmissionRetryInput**](SubmissionRetryInput.md)|  | 
 **optional** | ***SubmissionsApiRetrySubmissionsOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a SubmissionsApiRetrySubmissionsOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **xFields** | **optional.String**| An optional fields mask | 

### Return type

[**SubmissionRetry**](SubmissionRetry.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

