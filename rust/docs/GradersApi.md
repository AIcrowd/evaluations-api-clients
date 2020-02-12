# \GradersApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_grader_dao**](GradersApi.md#delete_grader_dao) | **Delete** /graders/{grader_id} | 
[**get_grader_dao**](GradersApi.md#get_grader_dao) | **Get** /graders/{grader_id} | 
[**get_grader_list_dao**](GradersApi.md#get_grader_list_dao) | **Get** /graders/ | 
[**post_grader_list_dao**](GradersApi.md#post_grader_list_dao) | **Post** /graders/ | 
[**put_grader_dao**](GradersApi.md#put_grader_dao) | **Put** /graders/{grader_id} | 


# **delete_grader_dao**
> delete_grader_dao(ctx, grader_id)


Delete a grader

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **grader_id** | **i32**|  | 

### Return type

 (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_grader_dao**
> ::models::Grader get_grader_dao(ctx, grader_id, optional)


Get information of a grader

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **grader_id** | **i32**|  | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grader_id** | **i32**|  | 
 **x_fields** | **String**| An optional fields mask | 

### Return type

[**::models::Grader**](Grader.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_grader_list_dao**
> Vec<::models::Grader> get_grader_list_dao(ctx, optional)


Get all grader

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_fields** | **String**| An optional fields mask | 

### Return type

[**Vec<::models::Grader>**](Grader.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_grader_list_dao**
> ::models::Grader post_grader_list_dao(ctx, payload, optional)


Create a new grader

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **payload** | [**Grader**](Grader.md)|  | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**Grader**](Grader.md)|  | 
 **x_fields** | **String**| An optional fields mask | 

### Return type

[**::models::Grader**](Grader.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **put_grader_dao**
> ::models::Grader put_grader_dao(ctx, grader_id, payload, optional)


Update a grader

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **grader_id** | **i32**|  | 
  **payload** | [**Grader**](Grader.md)|  | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grader_id** | **i32**|  | 
 **payload** | [**Grader**](Grader.md)|  | 
 **x_fields** | **String**| An optional fields mask | 

### Return type

[**::models::Grader**](Grader.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

