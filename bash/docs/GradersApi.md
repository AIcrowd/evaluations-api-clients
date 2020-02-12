# GradersApi

All URIs are relative to */v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteGraderDao**](GradersApi.md#deleteGraderDao) | **DELETE** /graders/{grader_id} | 
[**getGraderDao**](GradersApi.md#getGraderDao) | **GET** /graders/{grader_id} | 
[**getGraderListDao**](GradersApi.md#getGraderListDao) | **GET** /graders/ | 
[**postGraderListDao**](GradersApi.md#postGraderListDao) | **POST** /graders/ | 
[**putGraderDao**](GradersApi.md#putGraderDao) | **PUT** /graders/{grader_id} | 


## **deleteGraderDao**



Delete a grader

### Example
```bash
 deleteGraderDao grader_id=value
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

## **getGraderDao**



Get information of a grader

### Example
```bash
 getGraderDao grader_id=value X-Fields:value
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

## **getGraderListDao**



Get all grader

### Example
```bash
 getGraderListDao X-Fields:value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xFields** | **string** | An optional fields mask | [optional]

### Return type

[**array[Grader]**](Grader.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **postGraderListDao**



Create a new grader

### Example
```bash
 postGraderListDao X-Fields:value
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

## **putGraderDao**



Update a grader

### Example
```bash
 putGraderDao grader_id=value X-Fields:value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **graderId** | **integer** |  |
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

