# SubmissionsApi

All URIs are relative to */v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createSubmission**](SubmissionsApi.md#createSubmission) | **POST** /submissions/ | 
[**deleteSubmission**](SubmissionsApi.md#deleteSubmission) | **DELETE** /submissions/{submission_id} | 
[**getSubmission**](SubmissionsApi.md#getSubmission) | **GET** /submissions/{submission_id} | 
[**getSubmissionData**](SubmissionsApi.md#getSubmissionData) | **GET** /submissions/{submission_id}/data | 
[**getSubmissionLogs**](SubmissionsApi.md#getSubmissionLogs) | **GET** /submissions/{submission_id}/logs | 
[**listSubmissions**](SubmissionsApi.md#listSubmissions) | **GET** /submissions/ | 


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



Get the submission logs by submission ID

### Example
```bash
aicrowd-evaluations getSubmissionLogs submission_id=value
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

## **listSubmissions**



List all submissions available

### Example
```bash
aicrowd-evaluations listSubmissions  meta=value  status=value  user_id=value X-Fields:value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meta** | **string** | Fetch submissions with this meta value | [optional]
 **status** | **string** | Fetch submissions with this status | [optional]
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

