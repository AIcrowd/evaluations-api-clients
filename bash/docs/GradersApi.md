# GradersApi

All URIs are relative to */v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**archiveGrader**](GradersApi.md#archiveGrader) | **POST** /graders/{grader_id}/archive | 
[**createGrader**](GradersApi.md#createGrader) | **POST** /graders/ | 
[**deleteGrader**](GradersApi.md#deleteGrader) | **DELETE** /graders/{grader_id} | 
[**downloadGraderLogs**](GradersApi.md#downloadGraderLogs) | **GET** /graders/{grader_id}/logs/download | 
[**getGrader**](GradersApi.md#getGrader) | **GET** /graders/{grader_id} | 
[**getGraderLogs**](GradersApi.md#getGraderLogs) | **GET** /graders/{grader_id}/logs | 
[**listGraders**](GradersApi.md#listGraders) | **GET** /graders/ | 
[**unarchiveGrader**](GradersApi.md#unarchiveGrader) | **POST** /graders/{grader_id}/unarchive | 
[**updateGrader**](GradersApi.md#updateGrader) | **PATCH** /graders/{grader_id} | 


## **archiveGrader**



Archive a grader

### Example
```bash
aicrowd-evaluations archiveGrader grader_id=value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **graderId** | **integer** |  |

### Return type

(empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **createGrader**



Create a new grader

### Example
```bash
aicrowd-evaluations createGrader X-Fields:value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**Grader**](Grader.md) |  |
 **xFields** | **string** | An optional fields mask | [optional]

### Return type

[**Grader**](Grader.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **deleteGrader**



Delete a grader by its ID

### Example
```bash
aicrowd-evaluations deleteGrader grader_id=value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **graderId** | **integer** |  |

### Return type

(empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **downloadGraderLogs**



Get the grader logs by submission ID

### Example
```bash
aicrowd-evaluations downloadGraderLogs grader_id=value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **graderId** | **integer** |  |

### Return type

(empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **getGrader**



Get details of a grader by its ID

### Example
```bash
aicrowd-evaluations getGrader grader_id=value X-Fields:value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **graderId** | **integer** |  |
 **xFields** | **string** | An optional fields mask | [optional]

### Return type

[**Grader**](Grader.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **getGraderLogs**



Get grader logs from loki

### Example
```bash
aicrowd-evaluations getGraderLogs grader_id=value  step=value  log_lines=value X-Fields:value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **graderId** | **integer** |  |
 **step** | **integer** | Granularity of logs | [optional]
 **logLines** | **integer** | Number of lines to fetch | [optional]
 **xFields** | **string** | An optional fields mask | [optional]

### Return type

[**GraderLogs**](GraderLogs.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **listGraders**



List all graders available

### Example
```bash
aicrowd-evaluations listGraders  per_page=value  page=value  meta=value  name=value  status=value  user_id=value X-Fields:value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **perPage** | **string** | Results to display per page | [optional]
 **page** | **string** | Page number | [optional]
 **meta** | **string** | Fetch graders containing this meta value | [optional]
 **name** | **string** | Fetch grader containing name | [optional]
 **status** | **string** | Fetch graders with this status | [optional]
 **userId** | **integer** | Fetch graders created by the user | [optional]
 **xFields** | **string** | An optional fields mask | [optional]

### Return type

[**array[Grader]**](Grader.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **unarchiveGrader**



Unarchive a grader

### Example
```bash
aicrowd-evaluations unarchiveGrader grader_id=value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **graderId** | **integer** |  |

### Return type

(empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **updateGrader**



Update meta details of a grader by its ID. Warning: There is no data validation.

### Example
```bash
aicrowd-evaluations updateGrader grader_id=value X-Fields:value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **graderId** | **integer** |  |
 **payload** | [**GraderMeta**](GraderMeta.md) |  |
 **xFields** | **string** | An optional fields mask | [optional]

### Return type

[**Grader**](Grader.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

