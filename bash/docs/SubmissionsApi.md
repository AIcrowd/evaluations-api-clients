# SubmissionsApi

All URIs are relative to */v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createSubmission**](SubmissionsApi.md#createSubmission) | **POST** /submissions/ | 
[**deleteSubmission**](SubmissionsApi.md#deleteSubmission) | **DELETE** /submissions/{submission_id} | 
[**downloadSubmissionLogs**](SubmissionsApi.md#downloadSubmissionLogs) | **GET** /submissions/{submission_id}/logs/download | 
[**getSubmission**](SubmissionsApi.md#getSubmission) | **GET** /submissions/{submission_id} | 
[**getSubmissionData**](SubmissionsApi.md#getSubmissionData) | **GET** /submissions/{submission_id}/data | 
[**getSubmissionLogs**](SubmissionsApi.md#getSubmissionLogs) | **GET** /submissions/{submission_id}/logs | 
[**listSubmissions**](SubmissionsApi.md#listSubmissions) | **GET** /submissions/ | 
[**retrySubmissions**](SubmissionsApi.md#retrySubmissions) | **POST** /submissions/retry | 


## **createSubmission**



Make a new submission

### Example
```bash
aicrowd-evaluations createSubmission X-Fields:value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**Submissions**](Submissions.md) |  |
 **xFields** | **string** | An optional fields mask | [optional]

### Return type

[**Submissions**](Submissions.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **deleteSubmission**



Stop evaluation of a submission and delete it

### Example
```bash
aicrowd-evaluations deleteSubmission submission_id=value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submissionId** | **integer** |  |

### Return type

(empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **downloadSubmissionLogs**



Get the submission logs by submission ID

### Example
```bash
aicrowd-evaluations downloadSubmissionLogs submission_id=value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submissionId** | **integer** |  |

### Return type

(empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **getSubmission**



Get details of a submission by its ID

### Example
```bash
aicrowd-evaluations getSubmission submission_id=value X-Fields:value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submissionId** | **integer** |  |
 **xFields** | **string** | An optional fields mask | [optional]

### Return type

[**Submissions**](Submissions.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **getSubmissionData**



Get the submission data by submission ID

### Example
```bash
aicrowd-evaluations getSubmissionData submission_id=value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submissionId** | **integer** |  |

### Return type

(empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **getSubmissionLogs**



Get submission logs from loki

### Example
```bash
aicrowd-evaluations getSubmissionLogs submission_id=value  step=value  log_lines=value X-Fields:value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submissionId** | **integer** |  |
 **step** | **integer** | Granularity of logs | [optional]
 **logLines** | **integer** | Number of lines to fetch | [optional]
 **xFields** | **string** | An optional fields mask | [optional]

### Return type

[**SubmissionLogs**](SubmissionLogs.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **listSubmissions**



List all submissions available

### Example
```bash
aicrowd-evaluations listSubmissions  per_page=value  page=value  meta=value  status=value  grader_id=value  user_id=value X-Fields:value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **perPage** | **string** | Results to display per page | [optional]
 **page** | **string** | Page number | [optional]
 **meta** | **string** | Fetch submissions containing this meta value | [optional]
 **status** | **string** | Fetch submissions with this status | [optional]
 **graderId** | **integer** | Fetch submissions for a grader | [optional]
 **userId** | **integer** | Fetch submissions created by the user | [optional]
 **xFields** | **string** | An optional fields mask | [optional]

### Return type

[**array[Submissions]**](Submissions.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **retrySubmissions**



Retry the submissions with given IDs

### Example
```bash
aicrowd-evaluations retrySubmissions X-Fields:value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**SubmissionRetryInput**](SubmissionRetryInput.md) |  |
 **xFields** | **string** | An optional fields mask | [optional]

### Return type

[**SubmissionRetry**](SubmissionRetry.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

