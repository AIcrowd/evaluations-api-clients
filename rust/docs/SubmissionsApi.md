# \SubmissionsApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_submission_dao**](SubmissionsApi.md#delete_submission_dao) | **Delete** /submissions/{submission_id} | 
[**get_submission_dao**](SubmissionsApi.md#get_submission_dao) | **Get** /submissions/{submission_id} | 
[**get_submission_list_dao**](SubmissionsApi.md#get_submission_list_dao) | **Get** /submissions/ | 
[**post_submission_list_dao**](SubmissionsApi.md#post_submission_list_dao) | **Post** /submissions/ | 


# **delete_submission_dao**
> delete_submission_dao(ctx, submission_id)


Stop evaluation of a submission

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **submission_id** | **i32**|  | 

### Return type

 (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_submission_dao**
> ::models::Submissions get_submission_dao(ctx, submission_id, optional)


Get details of a submission

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **submission_id** | **i32**|  | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submission_id** | **i32**|  | 
 **x_fields** | **String**| An optional fields mask | 

### Return type

[**::models::Submissions**](Submissions.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_submission_list_dao**
> Vec<::models::Submissions> get_submission_list_dao(ctx, optional)


Get all submissions

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

[**Vec<::models::Submissions>**](Submissions.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_submission_list_dao**
> ::models::Submissions post_submission_list_dao(ctx, payload, optional)


Make a new submission

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **payload** | [**Submissions**](Submissions.md)|  | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**Submissions**](Submissions.md)|  | 
 **x_fields** | **String**| An optional fields mask | 

### Return type

[**::models::Submissions**](Submissions.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

