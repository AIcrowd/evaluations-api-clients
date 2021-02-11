# \GradersApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**archive_grader**](GradersApi.md#archive_grader) | **Post** /graders/{grader_id}/archive | 
[**create_grader**](GradersApi.md#create_grader) | **Post** /graders/ | 
[**delete_grader**](GradersApi.md#delete_grader) | **Delete** /graders/{grader_id} | 
[**get_grader**](GradersApi.md#get_grader) | **Get** /graders/{grader_id} | 
[**get_grader_logs**](GradersApi.md#get_grader_logs) | **Get** /graders/{grader_id}/logs | 
[**list_graders**](GradersApi.md#list_graders) | **Get** /graders/ | 
[**unarchive_grader**](GradersApi.md#unarchive_grader) | **Post** /graders/{grader_id}/unarchive | 
[**update_grader**](GradersApi.md#update_grader) | **Patch** /graders/{grader_id} | 


# **archive_grader**
> archive_grader(ctx, grader_id)


Archive a grader

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

# **create_grader**
> ::models::Grader create_grader(ctx, payload, optional)


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

# **delete_grader**
> delete_grader(ctx, grader_id)


Delete a grader by its ID

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

# **get_grader**
> ::models::Grader get_grader(ctx, grader_id, optional)


Get details of a grader by its ID

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

# **get_grader_logs**
> get_grader_logs(ctx, grader_id)


Get the grader logs by submission ID

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

# **list_graders**
> Vec<::models::Grader> list_graders(ctx, optional)


List all graders available

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **per_page** | **String**| Results to display per page | 
 **page** | **String**| Page number | 
 **meta** | **String**| Fetch graders containing this meta value | 
 **name** | **String**| Fetch grader containing name | 
 **status** | **String**| Fetch graders with this status | 
 **user_id** | **i32**| Fetch graders created by the user | 
 **x_fields** | **String**| An optional fields mask | 

### Return type

[**Vec<::models::Grader>**](Grader.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unarchive_grader**
> unarchive_grader(ctx, grader_id)


Unarchive a grader

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

# **update_grader**
> ::models::Grader update_grader(ctx, grader_id, payload, optional)


Update meta details of a grader by its ID. Warning: There is no data validation.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **grader_id** | **i32**|  | 
  **payload** | [**GraderMeta**](GraderMeta.md)|  | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grader_id** | **i32**|  | 
 **payload** | [**GraderMeta**](GraderMeta.md)|  | 
 **x_fields** | **String**| An optional fields mask | 

### Return type

[**::models::Grader**](Grader.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

