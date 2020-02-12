# SubmissionsApi

All URIs are relative to */v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteSubmissionDao**](SubmissionsApi.md#deleteSubmissionDao) | **DELETE** /submissions/{submission_id} | 
[**getSubmissionDao**](SubmissionsApi.md#getSubmissionDao) | **GET** /submissions/{submission_id} | 
[**getSubmissionListDao**](SubmissionsApi.md#getSubmissionListDao) | **GET** /submissions/ | 
[**postSubmissionListDao**](SubmissionsApi.md#postSubmissionListDao) | **POST** /submissions/ | 


## **deleteSubmissionDao**



Stop evaluation of a submission

### Example
```bash
 deleteSubmissionDao submission_id=value
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

## **getSubmissionDao**



Get details of a submission

### Example
```bash
 getSubmissionDao submission_id=value X-Fields:value
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

## **getSubmissionListDao**



Get all submissions

### Example
```bash
 getSubmissionListDao X-Fields:value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xFields** | **string** | An optional fields mask | [optional]

### Return type

[**array[Submissions]**](Submissions.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **postSubmissionListDao**



Make a new submission

### Example
```bash
 postSubmissionListDao X-Fields:value
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

