# \UsersApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_user_dao**](UsersApi.md#delete_user_dao) | **Delete** /users/{user_id} | 
[**get_user_dao**](UsersApi.md#get_user_dao) | **Get** /users/{user_id} | 
[**get_user_list_dao**](UsersApi.md#get_user_list_dao) | **Get** /users/ | 
[**post_user_list_dao**](UsersApi.md#post_user_list_dao) | **Post** /users/ | 
[**put_quota_dao**](UsersApi.md#put_quota_dao) | **Put** /users/addquota/{user_id} | 
[**put_user_dao**](UsersApi.md#put_user_dao) | **Put** /users/{user_id} | 


# **delete_user_dao**
> delete_user_dao(ctx, user_id)


Delete a user

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **user_id** | **i32**| User identifier | 

### Return type

 (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_user_dao**
> ::models::User get_user_dao(ctx, user_id, optional)


Get information of a user

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **user_id** | **i32**| User identifier | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **i32**| User identifier | 
 **x_fields** | **String**| An optional fields mask | 

### Return type

[**::models::User**](User.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_user_list_dao**
> Vec<::models::User> get_user_list_dao(ctx, optional)


Get all user

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

[**Vec<::models::User>**](User.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_user_list_dao**
> ::models::User post_user_list_dao(ctx, payload, optional)


Create a new user

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **payload** | [**User**](User.md)|  | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**User**](User.md)|  | 
 **x_fields** | **String**| An optional fields mask | 

### Return type

[**::models::User**](User.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **put_quota_dao**
> put_quota_dao(ctx, user_id, payload)


Add or subtract quota for a user

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **user_id** | **i32**| User identifier | 
  **payload** | [**UserQuota**](UserQuota.md)|  | 

### Return type

 (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **put_user_dao**
> ::models::User put_user_dao(ctx, user_id, payload, optional)


Update a user

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **user_id** | **i32**| User identifier | 
  **payload** | [**User**](User.md)|  | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **i32**| User identifier | 
 **payload** | [**User**](User.md)|  | 
 **x_fields** | **String**| An optional fields mask | 

### Return type

[**::models::User**](User.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

