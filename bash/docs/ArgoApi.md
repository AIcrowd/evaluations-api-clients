# ArgoApi

All URIs are relative to */v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**postGenericFeedbackContract**](ArgoApi.md#postGenericFeedbackContract) | **POST** /argo/{model_name}/{object_id} | 
[**postGraderFeedbackDao**](ArgoApi.md#postGraderFeedbackDao) | **POST** /argo/graders/{grader_id} | 
[**postSubmissionFeedbackDao**](ArgoApi.md#postSubmissionFeedbackDao) | **POST** /argo/submissions/{submission_id} | 


## **postGenericFeedbackContract**



Update the status of an object

### Example
```bash
aicrowd-evaluations postGenericFeedbackContract model_name=value object_id=value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **modelName** | **string** |  |
 **objectId** | **integer** |  |
 **payload** | [**GenericFeedback**](GenericFeedback.md) |  |

### Return type

(empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **postGraderFeedbackDao**



Update the grader details

### Example
```bash
aicrowd-evaluations postGraderFeedbackDao grader_id=value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **graderId** | **integer** |  |
 **payload** | [**GraderFeedback**](GraderFeedback.md) |  |

### Return type

(empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **postSubmissionFeedbackDao**



Update the submission details

### Example
```bash
aicrowd-evaluations postSubmissionFeedbackDao submission_id=value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submissionId** | **integer** |  |
 **payload** | [**SubmissionFeedback**](SubmissionFeedback.md) |  |

### Return type

(empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

