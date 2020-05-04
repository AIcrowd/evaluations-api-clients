# \GradersApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateGrader**](GradersApi.md#CreateGrader) | **Post** /graders/ | 
[**DeleteGrader**](GradersApi.md#DeleteGrader) | **Delete** /graders/{grader_id} | 
[**GetGrader**](GradersApi.md#GetGrader) | **Get** /graders/{grader_id} | 
[**GetGraderLogs**](GradersApi.md#GetGraderLogs) | **Get** /graders/{grader_id}/logs | 
[**ListGraders**](GradersApi.md#ListGraders) | **Get** /graders/ | 
[**UpdateGrader**](GradersApi.md#UpdateGrader) | **Patch** /graders/{grader_id} | 


# **CreateGrader**
> Grader CreateGrader(ctx, payload, optional)


Create a new grader

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **payload** | [**Grader**](Grader.md)|  | 
 **optional** | ***GradersApiCreateGraderOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a GradersApiCreateGraderOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **xFields** | **optional.String**| An optional fields mask | 

### Return type

[**Grader**](Grader.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DeleteGrader**
> DeleteGrader(ctx, graderId)


Delete a grader by its ID

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **graderId** | **int32**|  | 

### Return type

 (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetGrader**
> Grader GetGrader(ctx, graderId, optional)


Get details of a grader by its ID

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **graderId** | **int32**|  | 
 **optional** | ***GradersApiGetGraderOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a GradersApiGetGraderOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **xFields** | **optional.String**| An optional fields mask | 

### Return type

[**Grader**](Grader.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetGraderLogs**
> GetGraderLogs(ctx, graderId)


Get the grader logs by submission ID

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **graderId** | **int32**|  | 

### Return type

 (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ListGraders**
> []Grader ListGraders(ctx, optional)


List all graders available

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***GradersApiListGradersOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a GradersApiListGradersOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meta** | **optional.String**| Fetch graders containing this meta value | 
 **name** | **optional.String**| Fetch grader containing name | 
 **status** | **optional.String**| Fetch graders with this status | 
 **userId** | **optional.Int32**| Fetch graders created by the user | 
 **xFields** | **optional.String**| An optional fields mask | 

### Return type

[**[]Grader**](Grader.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **UpdateGrader**
> Grader UpdateGrader(ctx, graderId, payload, optional)


Update meta details of a grader by its ID. Warning: There is no data validation.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **graderId** | **int32**|  | 
  **payload** | [**GraderMeta**](GraderMeta.md)|  | 
 **optional** | ***GradersApiUpdateGraderOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a GradersApiUpdateGraderOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **xFields** | **optional.String**| An optional fields mask | 

### Return type

[**Grader**](Grader.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

